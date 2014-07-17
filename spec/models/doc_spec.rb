# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  entry_id   :integer
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  file       :string(255)
#

require 'rails_helper'

RSpec.describe Doc, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
