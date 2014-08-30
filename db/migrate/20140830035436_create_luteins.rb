class CreateLuteins < ActiveRecord::Migration
  def change
    create_table :luteins do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.string :commend

      t.timestamps
    end
  end
end
