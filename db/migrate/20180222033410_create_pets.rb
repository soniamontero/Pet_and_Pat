class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.references :user, foreign_key: true
      t.string :photo
      t.string :location
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
