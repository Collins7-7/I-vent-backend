class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.integer :phone_number
      t.integer :age
      t.string :gender
      t.string :password_digest
      t.string :image_url

      t.timestamps
    end
  end
end
