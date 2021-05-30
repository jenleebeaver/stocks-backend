class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
        t.string :portfolio_name
        t.float :user_id

      t.timestamps
    end
  end
end
