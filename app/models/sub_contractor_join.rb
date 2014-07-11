# == Schema Information
#
# Table name: sub_contractor_joins
#
#  id                       :integer          not null, primary key
#  roster_sub_contractor_id :integer
#  general_contractor_id    :integer
#  created_at               :datetime
#  updated_at               :datetime
#

class SubContractorJoin < ActiveRecord::Base

  belongs_to :roster_sub_contractor, {class_name: :Company}
  belongs_to :general_contractor, {class_name: :Company}

end
