# == Schema Information
#
# Table name: company_client_joins
#
#  id                    :integer          not null, primary key
#  general_contractor_id :integer
#  company_client_id     :integer
#  created_at            :datetime
#  updated_at            :datetime
#

class CompanyClientJoin < ActiveRecord::Base

  belongs_to :company
  belongs_to :company_client, {class_name: :Company}
  
end
