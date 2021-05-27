class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :portfolios, :username, :portfolio_name
  end
end
