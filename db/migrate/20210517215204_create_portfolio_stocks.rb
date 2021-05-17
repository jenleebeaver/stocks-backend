class CreatePortfolioStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolio_stocks do |t|
      t.bigInt :portfolio_id
      t.bigInt :stock_id
      t.bigInt :cryptoexchange_id

      t.timestamps
    end
  end
end
