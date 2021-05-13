class CreatePortfolios < ActiveRecord::Migration[6.0]
  def change
    create_table :portfolios do |t|
      t.String :s
      t.Float :p

      t.timestamps
    end
  end
end
