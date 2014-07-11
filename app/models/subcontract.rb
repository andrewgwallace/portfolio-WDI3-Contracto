# == Schema Information
#
# Table name: subcontracts
#
#  id               :integer          not null, primary key
#  job_id           :integer
#  subcontractor_id :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Subcontract < ActiveRecord::Base
  #Join for Subcontractors and Jobs
  belongs_to :job
  belongs_to :subcontractor, {:class_name => :Company}
end
