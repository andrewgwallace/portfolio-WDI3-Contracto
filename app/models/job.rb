class Job < ActiveRecord::Base

  belongs_to: :gc
  belongs_to: :client, as: :clientable

  has_many: :entries
  has_many: :attachments, through: :entries

end