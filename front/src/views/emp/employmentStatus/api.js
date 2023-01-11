import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getEmploymentStatusOne = (params) => {
    return getRequest('/employmentStatus/getOne', params)
}
export const getEmploymentStatusList = (params) => {
    return getRequest('/employmentStatus/getByPage', params)
}
export const getEmploymentStatusCount = (params) => {
    return getRequest('/employmentStatus/count', params)
}
export const addEmploymentStatus = (params) => {
    return postRequest('/employmentStatus/insert', params)
}
export const editEmploymentStatus = (params) => {
    return postRequest('/employmentStatus/update', params)
}
export const addOrEditEmploymentStatus = (params) => {
    return postRequest('/employmentStatus/insertOrUpdate', params)
}
export const deleteEmploymentStatus = (params) => {
    return postRequest('/employmentStatus/delByIds', params)
}