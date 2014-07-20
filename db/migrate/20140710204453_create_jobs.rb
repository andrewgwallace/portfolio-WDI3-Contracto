class CreateJobs < ActiveRecord::Migration
  def change
    
    create_table :jobs do |t|
      
      t.integer :general_contractor_id

      t.integer :client_id
      t.string :client_type

      t.string :name
      t.integer :contract_price

      t.date :start_date
      t.date :end_date

      t.boolean :closed_status
      t.boolean :paused_status

      

      t.timestamps

    end
  end
end
