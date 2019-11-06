class CreateSubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.references :category

      t.timestamps
    end
  end
end
