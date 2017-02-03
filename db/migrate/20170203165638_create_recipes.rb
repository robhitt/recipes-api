class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :style
      t.string :img_url
      t.timestamps
    end
  end
end
