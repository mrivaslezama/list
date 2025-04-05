class CreateLists < ActiveRecord::Migration[8.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :last_name
      t.string :rut
      t.string :phone
      t.string :location
      t.string :avatar
      t.references :user, null: false, foreign_key: true
      t.boolean :done

      t.timestamps
    end
  end
end
