portfolio = Portfolio.create(s: 'fake', p: 12.31)

stock = Stock.create(id: 1, s:'fake', p: 12.31, description: "I am fake data!", country: "jenland", currency: "jen$", exchange: "JDAQ", ipo: "2,000,000", finnhubIndustry: "jencorps", marketCapitalization: 19000000, peers: ["X", "Y", "Z"], buy: 20, hold: 20, sell: 0, strongBuy: 20, strongSell: 0, peRatio: 0.17, portfolio_id: 1, portfolio_stock_id: 1)

portfolio_stock = PortfolioStock.create(portfolio_id: 1, stock_id: 1)


