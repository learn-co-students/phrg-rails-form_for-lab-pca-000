class CreateSchoolClasses < ActiveRecord::Migration
  def change
    create_table :school_classes do |t|
      t.string :title, null: false
      t.integer :room_number, null: false

      t.timestamps null: false
    end
  end
end
