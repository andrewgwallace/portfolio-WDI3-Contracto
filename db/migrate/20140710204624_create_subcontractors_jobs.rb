class CreateSubcontracts < ActiveRecord::Migration
  def change
    create_table :subcontracts do |t|

      t.integer :job_id
      t.integer :company_id

      t.timestamps
    end
  end
end
