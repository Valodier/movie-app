class ChangeLanguagetoEnglish < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :language
    add_column :movies, :english, :boolean
  end
end
