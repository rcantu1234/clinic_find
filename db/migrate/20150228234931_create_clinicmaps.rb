class CreateClinicmaps < ActiveRecord::Migration
  def change
    create_table :clinicmaps do |t|

      t.timestamps null: false
    end
  end
end
