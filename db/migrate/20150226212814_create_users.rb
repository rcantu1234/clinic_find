class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight
      t.string :diseases
      t.string :allergies

      t.timestamps null: false
    end
  end
end
