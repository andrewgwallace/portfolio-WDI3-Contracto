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

class Attachment < ActiveRecord::Base

  attr_accessor :file, :remote_file_url

  belongs_to :entry

  mount_uploader :file, FileUploader

end
