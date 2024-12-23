// import axios from "axios";
// import { SUMMER_SHOP } from "./constants";

import axios from "axios"
import { SUMMER_SHOP } from "./constants"
import { spinningLoaderRef } from "./pages/Loading/hook"


// const BASE_URL = 'https://api-summer-shop.vercel.app/api'
const SERVICE = 'http://localhost:6868'
// const SERVICE = 'https://api-summer-shop.vercel.app'
const BASE_URL = SERVICE + '/api'
const IMAGE_LINK = SERVICE + '/images'
const IMAGE_DEFAULT = 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg'
// const TOKEN = JSON.parse(JSON.parse(localStorage.getItem("persist:root")).user).currentUser.accessToken
export {
    BASE_URL,
    IMAGE_LINK,
    IMAGE_DEFAULT
}


export const request = axios.create({
    baseURL: BASE_URL,
})

request.interceptors.request.use(
    (config) => {
        spinningLoaderRef.current?.start()
        let token = localStorage.getItem(SUMMER_SHOP)
        if (token) {
            config.headers = {
                ...config.headers,
                Authorization: `Bearer ${token}`,
            }
        }
        return config;
    },
    (error) => {
        // Handle request error
        return Promise.reject(error)
    }
);
request.interceptors.response.use(
    (response) => {
        spinningLoaderRef.current?.stop()
        return response
    }
    ,
    async function (error) {
        spinningLoaderRef.current?.stop()
        console.log('error', error);
        return Promise.reject(error?.response?.data)
    }
)
