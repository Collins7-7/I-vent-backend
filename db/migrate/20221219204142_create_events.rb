class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :start_date
      t.string :end_date
      t.string :start_time
      t.string :end_time
      t.string :location
      t.integer :amount
      t.string :image_url
      t.integer :total_tickets
      t.integer :remaining_tickets
      t.integer :category_id

      t.timestamps
    end
  end
end
