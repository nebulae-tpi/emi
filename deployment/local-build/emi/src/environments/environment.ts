export const environment =  {
 "production": false,
 "hmr": false,
 "keycloak": {
  "url": "https://tpi-dev.nebulae.com.co/auth",
  "realm": "DEV_TPI",
  "clientId": "EMI",
  "onLoad": "login-required",
  "checkLoginIframe": false,
  "bearerExcludedUrls": [
   "/assets"
  ]
 },
 "api": {
  "gateway": {
   "graphql": {
    "httpEndPoint": "https://tpi-dev.nebulae.com.co/api/emi-gateway/graphql/http",
    "wsEndPoint": "wss://tpi-dev.nebulae.com.co/api/emi-gateway/graphql/ws",
    "graphiqlEndPoint": "https://tpi-dev.nebulae.com.co/api/emi-gateway/graphiql"
   }
  }
 },
 "google": {
  "maps": {
   "key": "AIzaSyC1VkMKnBB_TATeaszTe_a8phyo-B8DSVg"
  }
 },
 "disableBusinessFareDiscountList": "b19c067e-57b4-468f-b970-d0101a31cacb,165e291d-5135-4674-aa25-a157933b2784"
};