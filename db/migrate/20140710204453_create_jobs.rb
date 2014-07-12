class CreateJobs < ActiveRecord::Migration
  def change
    
    create_table :jobs do |t|
      
      t.integer :general_contractor_id

      t.integer :client_id
      t.string :client_type

      t.boolean :open
      t.boolean :paused

      t.integer :contract_price

      t.string :start_date
      t.string :end_date

      t.timestamps

    end
  end
end
