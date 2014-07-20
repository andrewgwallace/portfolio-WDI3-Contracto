class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|

      t.integer :company_id
      t.string :type #enables STI for subclasses (admin, user, customer)

      t.string :first_name
      t.string :last_name
      t.string :middle_name

      t.string :address

      t.string :email   #added by devise
      t.string :email_1  #these are alternates
      t.string :email_2
      t.string :email_3
      
      t.string :home_phone
      t.string :office_phone
      t.string :mobile_phone

      t.timestamps
    end
  end
end
