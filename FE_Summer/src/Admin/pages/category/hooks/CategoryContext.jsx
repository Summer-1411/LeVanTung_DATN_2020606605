import { ReactNode, createContext, useContext, useState } from "react";
import { Form } from "antd";

export const CategoryContext = createContext('Context bảng Student');

export const CategoryProvider = ({
  children,
}) => {
  const [formCreateUpdate] = Form.useForm();
  const [edit, setEdit] = useState(false)
  const [initValue, setInitValue] = useState()
  const value = {
    formCreateUpdate,
    edit,
    setEdit,
    initValue,
    setInitValue
  }
  return <CategoryContext.Provider value={value}>
    {children}
  </CategoryContext.Provider>
}

export const useCategory = () => {
  return useContext(CategoryContext)
}