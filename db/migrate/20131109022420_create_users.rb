class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.date :date_of_birth
      t.string :email_address
      t.string :general_size
      t.string :uk_size
      t.string :us_size
      t.string :eu_size
      t.string :waist_size
      t.string :hip_size
      t.string :bust_size
    end
  end
end
