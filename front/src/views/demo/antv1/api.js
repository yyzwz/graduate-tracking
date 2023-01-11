import { getRequest, postRequest,postBodyRequest } from '@/libs/axios';

export const getNumberFour = (params) => {
  return getRequest("/zwzRsAntvFour/getNumberFour", params);
}
export const getInOrOutUserList = (params) => {
  return getRequest("/zwzRsAntvOne/getInOrOutUserList", params);
}