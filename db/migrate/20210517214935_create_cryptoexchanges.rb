class CreateCryptoexchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :cryptoexchanges do |t|
      t.string :symbol
      t.string :displaySymbol
      t.string :description
      t.bigInt :portfolio_id

      t.timestamps
    end
  end
end
