class AddAttachmentDocumentToPresentations < ActiveRecord::Migration
  def self.up
    change_table :presentations do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :presentations, :document
  end
end
