import { getRequest, postRequest,postBodyRequest } from '@/libs/axios';

export const getPieData = (params) => {
  return getRequest("/zwzRsAntvTwo/getPieData", params);
}
export const getPieUserItem = (params) => {
  return getRequest("/zwzRsAntvTwo/getPieUserItem", params);
}