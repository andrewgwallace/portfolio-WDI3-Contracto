class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      
      t.integer :company_id
      t.integer :clientable_id
      t.integer :clientable


      t.string :contract_price
      t.string :start_date
      t.string :end_date
      t.string :status

      t.timestamps
    end
  end
end
