# == Schema Information
#
# Table name: persons
#
#  id           :integer          not null, primary key
#  company_id   :integer
#  type         :string(255)
#  name         :string(255)
#  address      :string(255)
#  email_1      :string(255)
#  email_2      :string(255)
#  email_3      :string(255)
#  home_phone   :string(255)
#  office_phone :string(255)
#  mobile_phone :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Admin < Person
  
end
