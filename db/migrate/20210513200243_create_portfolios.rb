class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.string :s
      t.float :p
      t.text :cryptoexchanges

      t.timestamps
    end
  end
end
