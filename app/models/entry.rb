# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  job_id     :integer
#  text_blob  :text
#  read       :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Entry < ActiveRecord::Base
  belongs_to :job
  has_many :attachments
end
