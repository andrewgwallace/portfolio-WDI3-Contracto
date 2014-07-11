require 'rails_helper'

RSpec.describe Customer, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  context 'accociations' do
    # pending "association tests need to be written"
    it {should belong_to(:company)}
    it {should have_many(:jobs)}
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end
end
