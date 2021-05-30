class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password
      t.string :image_url
      t.string :password_digest
      t.string :password_confirmation

      t.timestamps
    end
  end
end
