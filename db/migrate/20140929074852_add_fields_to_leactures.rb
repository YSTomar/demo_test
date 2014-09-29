class AddFieldsToLeactures < ActiveRecord::Migration
  def change
    add_column :leactures, :p_title, :string
    add_column :leactures, :p_description, :text
  end
end
