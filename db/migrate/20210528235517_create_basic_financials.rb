class CreateBasicFinancials < ActiveRecord::Migration[6.0]
  def change
    create_table :basic_financials do |t|
      t.string :symbol
      t.float :peNormalizedAnnual
      t.float :stock_id
      t.float :portfolio_id

      t.timestamps
    end
  end
end
