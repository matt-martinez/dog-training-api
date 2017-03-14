class RemoveForeignKey < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :behaviors, :users
    remove_column :behaviors, :user_id, :integer
  end
end
