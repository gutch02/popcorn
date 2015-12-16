class CreatePopcorns < ActiveRecord::Migration
  def change
    create_table :popcorns do |t|
      t.string :flavor
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
