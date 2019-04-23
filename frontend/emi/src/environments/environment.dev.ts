export const environment = {
    "production": true,
    "hmr": false,
    "keycloak": {
        "url": "https://tpi-dev.nebulae.com.co/auth",
        "realm": "TPI",
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
    google: {
      maps: {
        key: 'AIzaSyByGMKwZIYXqcPONjNSX-KHJ9kbP5tBu5I'
      }
    }
};
