# == Schema Information
#
# Table name: persons
#
#  id                     :integer          not null, primary key
#  company_id             :integer
#  type                   :string(255)
#  first_name             :string(255)
#  last_name              :string(255)
#  middle_name            :string(255)
#  address                :string(255)
#  email_1                :string(255)
#  email_2                :string(255)
#  email_3                :string(255)
#  home_phone             :string(255)
#  office_phone           :string(255)
#  mobile_phone           :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#

class User < Person
  
end
