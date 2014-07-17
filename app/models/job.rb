# == Schema Information
#
# Table name: jobs
#
#  id                    :integer          not null, primary key
#  general_contractor_id :integer
#  client_id             :integer
#  client_type           :string(255)
#  name                  :string(255)
#  contract_price        :integer
#  start_date            :date
#  end_date              :date
#  closed_status         :boolean
#  paused_status         :boolean
#  created_at            :datetime
#  updated_at            :datetime
#

class Job < ActiveRecord::Base

  scope :open_scope, -> { where(closed_status: false) }    #'open is a reserved word'
  scope :closed_scope, -> { where(closed_status: true) }

  scope :active_scope, -> { where(paused_status: false) }
  scope :paused_scope, -> { where(paused_status: true) }

  
  

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

  # def open
    # return !closed
  # end

  def client_klass
    client.class
  end

end
