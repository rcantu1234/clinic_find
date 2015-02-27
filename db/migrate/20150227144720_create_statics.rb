class CreateStatics < ActiveRecord::Migration
  def change
    create_table :statics do |t|
      t.string :index
      t.string :edit
      t.string :show
      t.string :new

      t.timestamps null: false
    end
  end
end
