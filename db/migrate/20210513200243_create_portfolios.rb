class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
        t.string :portfolio_name

      t.timestamps
    end
  end
end
