class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :fullname
      t.integer :number
      t.datetime :birthday
      t.boolean :gender
      t.boolean :status

      t.timestamps
    end
  end
end
