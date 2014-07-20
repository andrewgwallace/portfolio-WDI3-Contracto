# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  office_phone :string(255)
#  logo_url     :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Company, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  



  context 'accociations' do
  #   # pending "association tests need to be written"

    describe 'company owns' do
      it {should have_many(:admins)}
      it {should have_many(:users)}

      it {should have_many(:roster_sub_contractors)}
            
      it {should have_many(:roster_clients)}
        it {should have_many(:roster_customer_clients)}
        it {should have_many(:roster_company_clients)}
    end

    describe 'ROLE: as general contractor, (relationships through job history)' do
      it {should have_many(:jobs)}
      # it {should have_many(:active_jobs)}
      # it {should have_many(:inactive_jobs)}

        # it {should have_many(:jobs_subcontractors)}
        # it {should have_many(:jobs_clients)}
        #   xit {should have_many(:jobs_customer_clients)}
        #   xit {should have_many(:jobs_company_clients)}
        
        # xit {should have_many(:gc_active_clients)}
        # xit {should have_many(:gc_inactive_clients)}

          # xit {should have_many(:gc_client_customers)}
          # xit {should have_many(:gc_active_client_customers)}
          # xit {should have_many(:gc_active_client_customers)}

          # xit {should have_many(:gc_client_companies)}
          # xit {should have_many(:gc_inactive_client_companies)}
          # xit {should have_many(:gc_inactive_client_companies)}
    end

    # describe 'ROLE: as sub contractor, through job' do
    #   xit {should have_many(:sc_jobs)}
    #   xit {should have_many(:sc_clients)}
    # end

    # describe 'ROLE: as client' do
    #   xit {should have_many(:sc_jobs)}
    #   xit {should have_many(:sc_clients)}
    # end
  end


  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end
end



RSpec.describe SubContractorJoin, :type => :model do
    it {should belong_to(:general_contractor)}
    it {should belong_to(:roster_sub_contractor)}
end


RSpec.describe CompanyClientJoin, :type => :model do
    it {should belong_to(:general_contractor)}
    it {should belong_to(:company_client)}
end

