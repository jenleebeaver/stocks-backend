class CreatePrices < ActiveRecord::Migration[6.0]
  def change
    create_table :prices do |t|
      t.float :c
      t.float :stock_id
      t.float :portfolio_id

      t.timestamps
    end
  end
end
