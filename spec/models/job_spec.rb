# == Schema Information
#
# Table name: jobs
#
#  id                    :integer          not null, primary key
#  general_contractor_id :integer
#  client_id             :integer
#  client_type           :string(255)
#  name                  :string(255)
#  contract_price        :integer
#  start_date            :date
#  end_date              :date
#  closed_status         :boolean
#  paused_status         :boolean
#  created_at            :datetime
#  updated_at            :datetime
#

require 'rails_helper'

RSpec.describe Job, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  context 'accociations' do
    # pending "association tests need to be written"
    it {should belong_to(:general_contractor) }

    it {should have_many(:subcontracts) }
    it {should have_many(:subcontractors) }

    it {should have_many(:entries)}
    it {should have_many(:attachments)}

    it {should belong_to(:client) }

    # xit {should 'client_type is either customer or client') }
  
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end

end
