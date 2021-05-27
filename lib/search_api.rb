require_relative '../.env/.finnhub_api_key'

# use interpolation of global variable FINNHUB_API_KEY
RestClient.get("https://finnhub.io/api/v1/search?q={symbol}' + `api_key=${FINNHUB_API_KEY}")