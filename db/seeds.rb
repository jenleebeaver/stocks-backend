portfolio = Portfolio.create(portfolio_name: 'JB')

stock = Stock.create(id: 1, description: "I am fake data!", country: "jenland", currency: "jen$", exchange: "JDAQ", ipo: "2,000,000", finnhubIndustry: "jencorps", marketCapitalization: 19000000, peers: ["X", "Y", "Z"], buy: 20, hold: 20, sell: 0, strongBuy: 20, strongSell: 0, portfolio_id: 1, portfolio_stock_id: 1)

basic_financial = BasicFinancial.create(id: 1, symbol: 'JEN', peNormalizedAnnual: 17.0, stock_id: 1, portfolio_id: 1)

price = Price.create(id: 1, c: 1000000.00, stock_id: 1, portfolio_id: 1)

portfolio_stock = PortfolioStock.create(portfolio_id: 1, stock_id: 1)


