import { getRequest, postRequest,postBodyRequest } from '@/libs/axios';

export const getNumberThree = (params) => {
  return getRequest("/zwzRsAntvThree/getNumberThree", params);
}
export const getInOrOutUserList = (params) => {
  return getRequest("/zwzRsAntvOne/getInOrOutUserList", params);
}