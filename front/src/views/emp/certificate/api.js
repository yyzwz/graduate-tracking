import { getRequest, postRequest, putRequest, postBodyRequest, getNoAuthRequest, postNoAuthRequest } from '@/libs/axios';

export const getCertificateOne = (params) => {
    return getRequest('/certificate/getOne', params)
}
export const getCertificateList = (params) => {
    return getRequest('/certificate/getByPage', params)
}
export const getCertificateCount = (params) => {
    return getRequest('/certificate/count', params)
}
export const addCertificate = (params) => {
    return postRequest('/certificate/insert', params)
}
export const editCertificate = (params) => {
    return postRequest('/certificate/update', params)
}
export const addOrEditCertificate = (params) => {
    return postRequest('/certificate/insertOrUpdate', params)
}
export const deleteCertificate = (params) => {
    return postRequest('/certificate/delByIds', params)
}