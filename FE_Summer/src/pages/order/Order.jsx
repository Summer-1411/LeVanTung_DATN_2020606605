import { useContext, useEffect, useMemo, useState } from 'react'

import './order.scss'
import ProductCheckout from '../../components/productCheckout/ProductCheckout'
import { v4 as uuidv4 } from 'uuid';
import { request } from '../../requestMethod';
import { useNavigate } from 'react-router-dom';
import { toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import { PAYMENT_METHOD, toastOption } from '../../constants';
import { numberWithCommas } from '../../utils/formatMoney';
import { Button, Form, Input, Space, Select, Row, Col, Checkbox, } from 'antd';
import { AppContext } from '../../context/AppContext';
import { useClearCart } from '../../services/products';
import { useCheckVoucher, useGetLocation } from './service';
import { useWatch } from 'antd/es/form/Form';
import useDebounce from '../../hooks/useDebounce';

const { Option } = Select;

export default function Order() {
    const navigate = useNavigate()
    const serviceClearCart = useClearCart()
    const { selectedProducts, setSelectedProducts } = useContext(AppContext)
    const [form] = Form.useForm();
    const [valueVoucher, setValueVoucher] = useState(null)

    const provinceId = useWatch('province', form)
    const districtId = useWatch('district', form)
    const wardId = useWatch('ward', form)
    const addressDetail = useWatch('addressDetail', form)

    const { data: lstProvince } = useGetLocation('list-province', { level: 1, code: 0 }, true)
    const { data: lstDistrict } = useGetLocation('list-district', { level: 2, code: provinceId }, !!provinceId)
    const { data: lstWard } = useGetLocation('list-ward', { level: 3, code: districtId }, !!districtId && !!provinceId)
    const { data: addressInfor } = useGetLocation('address-infor', { level: 5, code: wardId }, !!wardId)

    const checkVoucher = useCheckVoucher();

    let debouncedAddressDetail = useDebounce(addressDetail, 1000);



    useEffect(() => {
        const addDetail = debouncedAddressDetail ? debouncedAddressDetail : ''
        const addInfor = addressInfor?.full_name ? addressInfor?.full_name : ''
        form.setFieldValue('address', addDetail + ", " + addInfor)
    }, [wardId, debouncedAddressDetail])



    const sumPrice = useMemo(() => selectedProducts.reduce(
        (accumulator, item) => {
            return item.price * item.quantity + accumulator
        },
        0,
    ), [selectedProducts])


    useEffect(() => {
        if (selectedProducts.length === 0) {
            navigate("/")
        }
    }, [])


    let checkCondition = () => {
        if (selectedProducts.length === 0) {
            toast.error('Bạn chưa chọn sản phẩm trong giỏ hàng !', toastOption);
            return false
        }
        return true
    }

    const handleApplyVoucher = async () => {
        const code = form.getFieldValue('voucher')

        try {
            const dataRequest = {
                code: code,
                totalAmount: sumPrice
            }
            const { data: { data: dataResponse } } = await checkVoucher.mutateAsync(dataRequest)
            // const res = await request.post(`/voucher/check-voucher`, dataRequest)
            console.log('data', dataResponse);

            setValueVoucher(dataResponse)
        } catch (error) {
            setValueVoucher(null)
            console.log('er', error);
        }

    }
    // const moneyVoucher = useMemo(() => {
    //     return sumPrice * (valueVoucher / 100)
    // }, [sumPrice, valueVoucher])
    const handleOrder = async (values) => {
        if (!checkCondition()) {
            return;
        }
        let data = {
            ...values,
            methodShip: 'Giao hàng',
            products: selectedProducts,
            voucherValue: valueVoucher ? valueVoucher?.discount : 0,
            voucherCode: valueVoucher ? valueVoucher?.code : null,
            total: valueVoucher ? (sumPrice - valueVoucher?.discount) : sumPrice
        }
        try {
            const res = await request.post(`/order`, data)
            serviceClearCart.mutateAsync({
                products: selectedProducts
            })
            setSelectedProducts([])
            if (data.paymentMethod === PAYMENT_METHOD.DIRECT_PAYMENT) {
                toast.success(res.data.message, toastOption);
                navigate("/user/purchase")
            } else if (data.paymentMethod === PAYMENT_METHOD.ONLINE_PAYMENT) {
                window.open(res.data.redirectUrl, "_blank")
            }


        } catch (error) {
            console.log('error.response', error);
            toast.error(error.message, toastOption);
        }

    }

    return (
        <div className='order-wrapper'>
            <Form
                form={form}
                onFinish={handleOrder}
                name="validateOnly"
                layout="vertical"
                autoComplete="off"
            >
                <div className="order-heading">
                    Đặt hàng
                </div>

                <Form.Item
                    name="fullname"
                    label="Họ và tên"
                    rules={[
                        {
                            required: true,
                            message: 'Bạn chưa nhập họ tên!'
                        }
                    ]} >
                    <Input />
                </Form.Item>
                <Form.Item
                    name="phone"
                    label="Số điện thoại"
                    rules={[
                        {
                            required: true,
                            message: 'Bạn chưa nhập số điện thoại!'
                        }
                    ]}
                >
                    <Input />
                </Form.Item>
                <Row gutter={16}>
                    <Col xs={24} sm={24} md={12} xl={8}>
                        <Form.Item label="Tỉnh / Thành phố" name="province"
                            rules={[{ required: true, message: 'Vui lòng chọn tỉnh / thành phố !' }]}
                        >
                            <Select
                                placeholder="Chọn tỉnh / thành phố"
                                allowClear
                                onChange={() => form.resetFields(['district', 'ward'])}
                            >
                                {lstProvince.map((item) => (
                                    <Option key={item.id} value={item.id}>{item.full_name}</Option>
                                ))}
                            </Select>
                        </Form.Item>
                    </Col>

                    <Col xs={24} sm={24} md={12} xl={8}>
                        <Form.Item label="Quận / Huyện" name="district"
                            rules={[{ required: true, message: 'Vui lòng chọn Quận / Huyện !' }]}
                        >
                            <Select
                                placeholder="Chọn Quận / Huyện"
                                allowClear
                                onChange={() => form.resetFields(['ward'])}
                            >
                                {lstDistrict.map((item) => (
                                    <Option key={item.id} value={item.id}>{item.full_name}</Option>
                                ))}
                            </Select>
                        </Form.Item>
                    </Col>
                    <Col xs={24} sm={24} md={12} xl={8}>
                        <Form.Item label="Phường / Xã" name="ward"
                            rules={[{ required: true, message: 'Vui lòng chọn Phường / Xã !' }]}
                        >
                            <Select
                                placeholder="Chọn Phường / Xã"
                                allowClear
                            >
                                {lstWard.map((item) => (
                                    <Option key={item.id} value={item.id}>{item.full_name}</Option>
                                ))}
                            </Select>
                        </Form.Item>
                    </Col>
                </Row>
                <Form.Item
                    name="addressDetail"
                    label="Địa chỉ chi tiết"
                    rules={[
                        {
                            required: true,
                            message: 'Bạn chưa nhập địa chỉ chi tiết!'
                        }
                    ]}
                >
                    <Input placeholder='Nhập số nhà, ngõ, xóm ....' />
                </Form.Item>
                <Form.Item
                    name="address"
                    label="Địa chỉ nhận hàng"

                    rules={[
                        {
                            required: true,
                            message: 'Bạn chưa nhập địa chỉ nhận hàng!'
                        }
                    ]}
                >
                    <Input disabled />
                </Form.Item>



                <Form.Item label="Mã giảm giá" extra="Nhập mã giảm giá nếu có">
                    <Row gutter={8}>
                        <Col span={20}>
                            <Form.Item
                                name="voucher"
                            // label="Mã giảm giá"

                            >
                                <Input />
                            </Form.Item>
                        </Col>
                        <Col span={4}>
                            <Button onClick={handleApplyVoucher} type='primary'>Áp dụng</Button>
                        </Col>
                    </Row>
                </Form.Item>

                <Form.Item
                    name="note"
                    label="Ghi chú"
                >
                    <Input.TextArea showCount maxLength={100} />
                </Form.Item>
                <Form.Item name="paymentMethod" label="Hình thức thanh toán" rules={[{ required: true, message: 'Vui lòng chọn hình thức thanh toán!' }]}>
                    <Select
                        placeholder="Chọn hình thức thanh toán"
                        // onChange={onGenderChange}
                        allowClear
                    >
                        <Option value="1">Thanh toán khi nhận hàng</Option>
                        <Option value="2">Thanh toán trực tuyến</Option>
                    </Select>
                </Form.Item>




                <div className="order-product">
                    {selectedProducts.map(pro => (
                        <ProductCheckout product={pro} key={uuidv4()} />
                    ))}
                </div>
                <div className="checkout-product">
                    <div className="checkout-product-right">
                        {valueVoucher ? <div className="sum-price-checkout">
                            <div className="title-checkout">
                                Giảm (voucher) :
                            </div>
                            <div style={{ marginLeft: 10, textDecoration: 'line-through' }} className="price-order">
                                - {numberWithCommas(valueVoucher.discount)}
                            </div>
                        </div> : <></>}
                        <div className="sum-price-checkout">
                            <div className="title-checkout">
                                Thành tiền :
                            </div>
                            <div style={{ marginLeft: 10 }} className="price-order">
                                {valueVoucher ? numberWithCommas(sumPrice - valueVoucher.discount) : numberWithCommas(sumPrice)}
                            </div>
                        </div>
                    </div>
                </div>
                <Form.Item style={{ textAlign: 'center' }}>
                    <Space >
                        <Button htmlType="reset">Làm mới</Button>
                        <Button type="primary" htmlType="submit" >
                            Đặt hàng
                        </Button>

                    </Space>
                </Form.Item>
            </Form>
        </div>
    )
}
