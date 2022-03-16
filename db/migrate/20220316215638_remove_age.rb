class RemoveAge < ActiveRecord::Migration[7.0]
  def change
    remove_column :actors, :age
  end
end
