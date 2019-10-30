class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :subcategory
      t.string :title
      t.string :price
      t.string :popularity

      t.timestamps
    end
  end
end
