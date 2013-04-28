class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.integer :iso
      t.string :brand

      t.timestamps
    end
  end
end
