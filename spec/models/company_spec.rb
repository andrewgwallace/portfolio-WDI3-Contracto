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
    pending "association tests need to be written"
    # it {should belong_to(:entry)}
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end
end
