class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      
      t.integer :job_id

      t.text :text_blob
      t.boolean :read

      t.timestamps
    end
  end
end
