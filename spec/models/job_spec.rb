# == Schema Information
#
# Table name: jobs
#
#  id             :integer          not null, primary key
#  company_id     :integer
#  clientable_id  :integer
#  clientable     :integer
#  contract_price :string(255)
#  start_date     :string(255)
#  end_date       :string(255)
#  status         :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe Job, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  context 'accociations' do
    pending "association tests need to be written"
    it {should belong_to(:company) }
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end

end
