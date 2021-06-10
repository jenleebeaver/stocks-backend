#manual seed data 
User.destroy_all
Portfolio.destroy_all 

user1 = User.create(id: 1, username:"JB", image_url:"https://en.wikipedia.org/wiki/File:Judith_1_(cropped).jpg", email:"jen@gmail.com", password:"123456789")

portfolio1 = Portfolio.create(portfolio_name: 'Test', watchlist: ["JEN", "TEST", "FAKE"], user_id: 1)

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


