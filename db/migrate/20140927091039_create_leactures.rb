class CreateLeactures < ActiveRecord::Migration
  def change
    create_table :leactures do |t|
      t.string :title
      t.text :description
      t.integer :presentation_id

      t.timestamps
    end
  end
end
