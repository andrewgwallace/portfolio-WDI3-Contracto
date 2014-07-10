class Customer < Person
  has_many :jobs, as: :clientable
end
