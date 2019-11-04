class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.jsonb :details
      t.string :size
      t.string :weight
      t.string :description
      t.references :subcategory, foreign_key: true
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
