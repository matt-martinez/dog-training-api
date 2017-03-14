class CreateBehaviors < ActiveRecord::Migration[5.0]
  def change
    create_table :behaviors do |t|
      t.string :name
      t.string :suggestion_one
      t.string :suggestion_two
      t.string :suggestion_three
      t.string :suggestion_four
      t.string :suggestion_five
      t.string :resource_one
      t.string :resource_two
      t.string :resource_three
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
