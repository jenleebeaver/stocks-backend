class AddUsernameToPortfolios < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :username, :string
  end
end
