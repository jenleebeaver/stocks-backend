class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :s
      t.float :p
      t.string :description
      t.string :country
      t.string :currency
      t.string :exchange
      t.string :ipo
      t.string :finnhubIndustry 
      t.bigint :marketCapitalization
      t.text :peers
      t.integer :buy
      t.integer :hold
      t.integer :sell
      t.integer :strongBuy
      t.integer :strongSell
      t.float :peRatio 
      t.integer :portfolio_id

      t.timestamps
    end
  end
end

