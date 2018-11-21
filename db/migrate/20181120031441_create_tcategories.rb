class CreateTcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :tcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
