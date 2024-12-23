
import { Button, Tag, Image } from 'antd';
import { DeleteOutlined, EditOutlined, EyeOutlined, PlusOutlined } from '@ant-design/icons';
import Table from "antd/es/table";

import { TrackingLogProvider, useTrackingLog } from "./hooks/TrackingLogContext";
import { ACTION_TYPE } from '../../../constants';
import Filter from './components/filter';
import { useModalConfirm } from '../../../ui/ConfirmModel/ModalContextCustom';
import { ModalType } from '../../../ui/ConfirmModel/contanst';
import { useSearchProductDetail } from '../../../services/filter';
import { useState } from 'react';
import { useGetLogApi } from '../../../services/apiLog';
import FormCreateUpdate from './components/formCreateUpdate';


const TrackingLog = () => {
    const { setStatusForm, filter, setFilter, formCreate } = useTrackingLog()
    const { showConfirm } = useModalConfirm()
    const { data = [], pagination: paginationResponse = { total: 0, pageSize: 10, current: 1, totalPages: 1 } } = useGetLogApi(filter)



    const { total, pageSize, current } = paginationResponse


    const handleView = async (record) => {
        formCreate.setFieldsValue(record);
        setStatusForm({
            open: true,
            action: ACTION_TYPE.CREATE,
            initData: {}
        })
    }


    const columns = [
        {
            width: 150,
            title: 'Method',
            dataIndex: 'method',
        },
        {
            width: 100,
            title: 'User Id',
            dataIndex: 'userId',
        },
        {
            width: 150,
            title: 'Url',
            dataIndex: 'url'
        },
        {

            width: 300,
            title: 'Request',
            dataIndex: 'requestBody',
            ellipsis: true,
        },
        {
            width: 100,
            title: 'Status',
            dataIndex: 'statusCode',
        },
        {
            width: 150,
            title: 'Thời gian',
            dataIndex: 'createAt',
        },
        {
            width: 100,
            title: 'Địa chỉ ip',
            dataIndex: 'ipAddress',
        },
        {
            width: 100,
            key: "action",
            render: (field, record) => (
                <div style={{ display: "flex", gap: 10 }}>
                    <Button size='small' type='default' onClick={() => handleView(record)} icon={<EyeOutlined />} />
                </div>
            )
        }
    ];
    const Header = () => {
        return <div style={{ display: 'flex', justifyContent: 'flex-start', alignItems: 'center' }}>
            <h3>
                Danh sách truy cập hệ thống
            </h3>
        </div>
    }

    const handleTableChange = (page, size) => {
        setFilter(prev => ({
            ...prev,
            pagination: {
                page: page,
                pageSize: size,
            }
        }))
    };
    return (
        <div>

            <Filter />
            <Table
                title={() => <Header />}
                rowKey={'id'}
                columns={columns}
                dataSource={data}
                pagination={{
                    current: current,
                    pageSize: pageSize,
                    total: total,
                    onChange: handleTableChange, // Đặt sự kiện onChange
                }}
            />
            <FormCreateUpdate />
        </div>
    )
}



const ProductRoot = () => (
    <TrackingLogProvider>
        <TrackingLog />
    </TrackingLogProvider>
)

export default ProductRoot