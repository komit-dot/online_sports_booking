class CreateSports < ActiveRecord::Migration[7.0]
  def change
    create_table :sports do |t|
      t.string :name
      t.string :city
      t.integer :pincode
      t.string :address
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
