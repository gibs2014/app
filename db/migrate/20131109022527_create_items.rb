class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :colour
      t.string :brand
      t.integer :price
      t.string :flattering_for
      t.boolean :extra_support
      t.string :image_url
      t.string :general_size
      t.string :us_size
      t.string :uk_size
      t.string :eu_size
      t.string :waist_size
      t.string :hip_size
      t.string :bust_size
    end
  end
end
