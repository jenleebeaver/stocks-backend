class CreatePortfolioStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolioStocks do |t|
      t.bigint :portfolio_id
      t.bigint :stock_id

      t.timestamps
    end
  end
end
