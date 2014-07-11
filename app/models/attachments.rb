# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  entry_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Attachments < ActiveRecord::Base
  belongs_to :entry

  #Too soon? Wait for paperclip?

end
