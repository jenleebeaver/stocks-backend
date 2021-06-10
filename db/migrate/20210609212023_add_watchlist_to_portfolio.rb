class AddWatchlistToPortfolio < ActiveRecord::Migration[6.0]
  def change
    add_column :portfolios, :watchlist, :text, default: [].to_yaml, array:true
    add_index :portfolios, :watchlist, using: 'gin'
  end
end
