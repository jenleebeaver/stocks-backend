#manual seed data 
User.destroy_all
Portfolio.destroy_all 

user1 = User.create(id: 1, username:"JB", image_url:"https://en.wikipedia.org/wiki/File:Judith_1_(cropped).jpg", email:"jen@gmail.com", password:"123456789")

portfolio1 = Portfolio.create(portfolio_name: 'Test', watchlist: ["JEN", "TEST", "FAKE"], user_id: 1)

