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

RSpec.describe Entry, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'accociations' do
    # pending "association tests need to be written"
    it {should belong_to(:job)}
    it {should have_many(:attachments )}
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end
  

end
