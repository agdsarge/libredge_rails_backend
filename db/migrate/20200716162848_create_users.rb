class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :country
      t.string :bio
      t.decimal :rating

      t.timestamps
    end
  end
end
