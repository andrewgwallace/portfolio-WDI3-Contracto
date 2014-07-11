class CreateCompanyClientJoins < ActiveRecord::Migration
  def change
    create_table :company_client_joins do |t|

      t.integer :general_contractor_id
      t.integer :company_client_id
      
      t.timestamps
    end
  end
end
