class CreateCocktails < ActiveRecord::Migration[5.0]
  def change
    create_table :cocktails do |t|
      t.string :cocktails
      t.string :ingredients
      t.integer :doses

      t.timestamps
    end
  end
end
