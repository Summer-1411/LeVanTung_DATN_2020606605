import { request } from '../../requestMethod';
import { toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import { toastOption } from '../../constants';
import { Button, Form, Input, Modal } from 'antd';
import { useState } from 'react';
import { useForm } from 'antd/es/form/Form';


export default function ChangePassword() {
    const [isModalOpen, setIsModalOpen] = useState(false);

    const [form] = useForm();
    const [formForgotPassword] = useForm();
    const showModal = () => {
        setIsModalOpen(true);
    };



    const handleOk = async (values) => {

        const valueRegister = formForgotPassword.getFieldValue()
        const value = { ...values, ...valueRegister }
        try {
            await request.post(`/auth/save-change-password`, value)
            handleCancel()
            toast.success('Bạn đã đổi mật khẩu thành công !', toastOption);
        } catch (error) {
            toast.error(error.message, toastOption);
            console.log("ERROR REGISTER: ", error);
        }
    };

    const handleCancel = () => {
        setIsModalOpen(false);
    };


    const onFinish = async (values) => {
        handleSendOTP()

    }

    const handleSendOTP = async () => {
        const values = formForgotPassword.getFieldValue()
        if (!values.oldPassword || !values.newPassword || !values.newPassword2) {
            toast.error('Vui lòng nhập đủ thông tin !', toastOption);
            return
        }
        try {
            await request.post(`/auth/check-change-password`, values)
            showModal()
        } catch (error) {
            toast.error(error.message, toastOption);
            console.log("ERROR OTP: ", error);
        }
    }


    return (

        <>
            <Modal
                title="Vui lòng nhập mã OTP được gửi về Email để thay đổi mật khẩu"
                open={isModalOpen}
                onCancel={handleCancel}
                footer={[
                    <></>
                ]}>
                <Form
                    form={form}
                    name="formOTP"
                    layout={'vertical'}
                    onFinish={handleOk}
                >
                    <Form.Item

                        name="otp"
                        rules={[{ required: true, message: 'Không được trống mã OTP !' }]}
                        label="Mã OTP"
                        style={{ textAlign: 'center' }}
                    >
                        <Input style={{ width: '100%' }} />
                    </Form.Item>


                    <div style={{ display: 'flex', justifyContent: 'flex-end', gap: 8 }}>
                        <Button onClick={handleSendOTP}>
                            Gửi lại mã OTP
                        </Button>
                        <Button key="back" onClick={handleCancel}>
                            Bỏ qua
                        </Button>
                        <Button type="primary" htmlType='submit'>
                            Xác nhận
                        </Button>
                    </div>



                </Form>
            </Modal>
            <Form
                layout={'vertical'}
                name="forgotPassword"
                form={formForgotPassword}
                onFinish={onFinish}
                autoComplete="off"
            >
                <Form.Item
                    label="Mật khẩu cũ"
                    name="oldPassword"
                    rules={[
                        {
                            required: true,
                            message: 'Bạn chưa nhập mật khẩu cũ!',
                        },

                    ]}
                >
                    <Input.Password />
                </Form.Item>

                <Form.Item
                    label="Mật khẩu mới"
                    name="newPassword"
                    rules={[
                        {
                            required: true,
                            message: 'Bạn chưa nhập mật khẩu !'
                        },
                        {
                            min: 6,
                            message: 'Mật khẩu phải từ 6 ký tự trở lên !',
                        },
                        ({ getFieldValue }) => ({
                            validator(_, value) {
                                if (!value || getFieldValue('oldPassword') !== value) {
                                    return Promise.resolve();
                                }
                                return Promise.reject(new Error('Trùng với mật khẩu cũ !'));
                            },
                        }),
                    ]}
                >
                    <Input.Password />
                </Form.Item>
                <Form.Item
                    label="Nhập lại mật khẩu mới"
                    name="newPassword2"
                    dependencies={['password']}
                    rules={[
                        {
                            required: true,
                        },
                        ({ getFieldValue }) => ({
                            validator(_, value) {
                                if (!value || getFieldValue('newPassword') === value) {
                                    return Promise.resolve();
                                }
                                return Promise.reject(new Error('Mật khẩu không trùng khớp !'));
                            },
                        }),
                    ]}
                >
                    <Input.Password />
                </Form.Item>


                <Form.Item>
                    <Button type="primary" htmlType='submit' style={{ width: '100%' }}>
                        Đặt lại mật khẩu
                    </Button>
                </Form.Item>
            </Form>

        </>
    )
}
