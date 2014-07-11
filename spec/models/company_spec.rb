# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  office_phone :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Company, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  context 'accociations' do
    # pending "association tests need to be written"
    describe 'ROLE: as company' do
      xit {should have_many(:admins)}
      xit {should have_many(:users)}
      xit {should have_many(:subcontractors_on_roster)}
      xit {should have_many(:clients_on_roster)}
        xit {should have_many(:customer_clients_on_roster)}
        xit {should have_many(:company_clients_on_roster)}
    end
    describe 'ROLE: as general contractor' do
      xit {should have_many(:gc_jobs)}
      xit {should have_many(:gc_subcontractors)}
      xit {should have_many(:gc_clients)}
        xit {should have_many(:gc_client_customers)}
        xit {should have_many(:gc_client_companies)}
        xit {should have_many(:gc_active_clients)}
          xit {should have_many(:gc_active_client_customers)}
          xit {should have_many(:gc_inactive_client_companies)}
        xit {should have_many(:gc_inactive_clients)}
          xit {should have_many(:gc_active_client_customers)}
          xit {should have_many(:gc_inactive_client_companies)}
      xit {should have_many(:customers_on_roster)}
      xit {should have_many(:subcontractors_on_roster)}    
    end
    describe 'ROLE: as sub contractor' do
      xit {should have_many(:sc_jobs)}
      xit {should have_many(:sc_clients)}
    end
  end


  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end
end
