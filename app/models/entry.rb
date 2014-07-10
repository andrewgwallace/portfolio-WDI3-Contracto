class Entry < ActiveRecord::Base
  belongs_to :job
  has_many :attachments
end
