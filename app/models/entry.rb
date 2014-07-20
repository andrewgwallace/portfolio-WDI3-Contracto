# == Schema Information
#
# Table name: entries
#
#  id                                   :integer          not null, primary key
#  job_id                               :integer
#  text_blob                            :text
#  read                                 :boolean
#  auto_generated_from_incoming_email   :boolean
#  read_status                          :boolean
#  visable_to_job_client_status         :boolean
#  visable_to_job_subcontractors_status :boolean
#  created_at                           :datetime
#  updated_at                           :datetime
#

class Entry < ActiveRecord::Base

  scope :visable_to_job_client_status_scope, -> { where(visable_to_job_client_status: true) }    #'open is a reserved word'
  scope :hidden_from_job_client_status_scope, -> { where(visable_to_job_client_status: false) }    #'open is a reserved word'

  scope :visable_to_job_subcontractors_status_scope, -> { where(visable_to_job_subcontractors_status: true) }
  scope :hidden_to_job_subcontractors_status_scope, -> { where(visable_to_job_subcontractors_status: false) }

  
  belongs_to :job
  has_many :attachments
    has_many :photos
    has_many :docs
    has_many :audios

  scope :emails, -> { where(auto_generated_from_incoming_email: 'true') }
  # scope :unread_email, -> { where(auto_generated_from_incoming_email: 'true' && read_status: 'false') }
  
end
