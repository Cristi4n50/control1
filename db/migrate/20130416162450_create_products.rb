class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.strinf :name
      t.integer :price

      t.timestamps
    end
  end
end