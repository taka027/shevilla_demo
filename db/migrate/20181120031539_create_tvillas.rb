class CreateTvillas < ActiveRecord::Migration[5.2]
  def change
    create_table :tvillas do |t|
      t.string :address
      t.string :title
      t.string :description
      t.integer :price
      t.references :tarea, foreign_key: true
      t.references :tcategory, foreign_key: true

      t.timestamps
    end
  end
end
