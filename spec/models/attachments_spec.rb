# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  entry_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Attachment, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  context 'accociations' do
    # pending "association tests need to be written"
    it {should belong_to(:entry)}
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end






end
