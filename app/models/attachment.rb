# == Schema Information
#
# Table name: attachments
#
#  id         :integer          not null, primary key
#  entry_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Attachment < ActiveRecord::Base

  attr_accessor :file, :remote_file_url

  belongs_to :entry

  mount_uploader :file, FileUploader

end
