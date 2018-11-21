class CreateVillas < ActiveRecord::Migration[5.2]
  def change
    create_table :villas do |t|
      t.string :address
      t.string :title
      t.string :area
      t.text :description
      t.integer :price
      t.string :category

      t.timestamps
    end
  end
end
