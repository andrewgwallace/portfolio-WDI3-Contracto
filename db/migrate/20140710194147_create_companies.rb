class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|

      t.string :name
      t.string :address
      t.string :office_phone

      t.string :logo_url

      t.timestamps
    end
  end
end
