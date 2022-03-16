class AddLanguageToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :language, :string
  end
end
