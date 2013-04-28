class CreateDevelopmentTimes < ActiveRecord::Migration
  def change
    create_table :development_times do |t|
      t.integer :seconds
      t.string :dillution
      t.integer :iso
      t.float :temperature
      t.integer :film_id
      t.integer :developer_id
      t.string :notes
      t.integer :rating

      t.timestamps
    end
  end
end
