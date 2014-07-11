class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      
      t.integer :job_id

      t.text :text_blob
      t.boolean :read

      t.boolean :auto_generated_from_incoming_email
      t.boolean :read_status

      t.timestamps
    end
  end
end
