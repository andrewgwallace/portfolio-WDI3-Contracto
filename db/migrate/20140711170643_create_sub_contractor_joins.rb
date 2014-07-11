class CreateSubContractorJoins < ActiveRecord::Migration
  def change
    create_table :sub_contractor_joins do |t|

      t.integer :roster_sub_contractor_id
      t.integer :general_contractor_id

      t.timestamps
    end
  end
end
