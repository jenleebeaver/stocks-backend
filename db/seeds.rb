#manual seed data 
portfolio = Portfolio.create(portfolio_name: 'JB')


#**finnhub ruby gem test code**  
# const finnhub = require('finnhub');
 
# const api_key = finnhub.ApiClient.instance.authentications['api_key'];
# api_key.apiKey = FINNHUB_API_KEY 
# const finnhubClient = new finnhub.DefaultApi()

# finnhub_basic_financial = finnhubClient.financials("AAPL", "ic", "annual",                              (error, data, response) => {
#                             console.log(data)
#                             });

# **get request** 
# price_resp = RestClient::Request.execute(method: :get,
#     url: "https://finnhub.io/api/v1/quote?",
#     headers: {
#         'Content-Type': 'application/json'
#     })

# price_data = JSON.parse(resp.body)
# prices = price_data

# prices.each do |price|
#     Prices.create(
#         c: price["c"]
#     )
# end


