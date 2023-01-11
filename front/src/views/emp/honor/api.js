import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getHonorOne = (params) => {
    return getRequest('/honor/getOne', params)
}
export const getHonorList = (params) => {
    return getRequest('/honor/getByPage', params)
}
export const getHonorCount = (params) => {
    return getRequest('/honor/count', params)
}
export const addHonor = (params) => {
    return postRequest('/honor/insert', params)
}
export const editHonor = (params) => {
    return postRequest('/honor/update', params)
}
export const addOrEditHonor = (params) => {
    return postRequest('/honor/insertOrUpdate', params)
}
export const deleteHonor = (params) => {
    return postRequest('/honor/delByIds', params)
}