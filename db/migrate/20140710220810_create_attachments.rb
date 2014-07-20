class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|

      t.integer :entry_id
      t.string :type #enables STI for subclasses (photo, doc, audio)

      t.timestamps
    end
  end
end
