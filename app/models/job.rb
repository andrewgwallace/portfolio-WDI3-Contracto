# == Schema Information
#
# Table name: jobs
#
#  id             :integer          not null, primary key
#  company_id     :integer
#  clientable_id  :integer
#  clientable     :integer
#  contract_price :string(255)
#  start_date     :string(255)
#  end_date       :string(255)
#  status         :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Job < ActiveRecord::Base

            belongs_to :company
            private (:company)
  def general_contractor 
    return company
  end
    
  belongs_to :client#, as: :clientable

            has_many :subcontracts
            private (:subcontracts)

  has_many :subcontractors, through: :subcontracts

  has_many :entries
  has_many :attachments, through: :entries

end
