# == Schema Information
#
# Table name: entries
#
#  id         :integer          not null, primary key
#  job_id     :integer
#  text_blob  :text
#  read       :boolean
#  created_at :datetime
#  updated_at :datetime
#

RSpec.describe Entry, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'accociations' do
    # pending "association tests need to be written"
    it {should have_many(:entries) }
    it {should belong_to(:job) }
  end

  context 'controllers' do
    pending 'controller texts need to be written'
    # it {bleh}
  end
  

end
