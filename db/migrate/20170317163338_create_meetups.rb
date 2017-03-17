class CreateMeetups < ActiveRecord::Migration[5.0]
  def change
    create_table :meetups do |t|
      t.integer :zip
      t.integer :radius

      t.timestamps
    end
  end
end
