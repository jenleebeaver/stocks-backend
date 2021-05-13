class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :s
      t.float :p
      t.string :description
      t.integer :portfolio_id

      t.timestamps
    end
  end
end
