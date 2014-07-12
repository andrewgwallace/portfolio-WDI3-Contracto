# == Schema Information
#
# Table name: jobs
#
#  id                    :integer          not null, primary key
#  general_contractor_id :integer
#  client_id             :integer
#  client_type           :string(255)
#  open                  :boolean
#  paused                :boolean
#  contract_price        :integer
#  start_date            :string(255)
#  end_date              :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

class Job < ActiveRecord::Base

  # scope :open, -> { where(open: 'true') }
  #   scope :active, -> { where(open: 'true') && (paused: 'false' }
  #   scope :inactive, -> { where(open: 'true') && (paused: 'true')}
  # scope :closed, -> { where(open: 'false') }

  # scope :past_completion_date#, -> where current date > completion date

  # # scope :unpaid
  # # scope :fully_paid
  # # scope :payment_overdue
  
  
  belongs_to :general_contractor, {class_name: :Company}
  
  has_many :subcontracts#; private (:subcontracts)
  has_many :subcontractors, through: :subcontracts


  has_many :entries
  has_many :attachments, through: :entries
  
  belongs_to :client, polymorphic: :true

  def client_type
    client.class
  end

end
