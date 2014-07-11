# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  office_phone :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Company < ActiveRecord::Base

  #ASSOCIATIONS
    ##ROLE: as comany,  
      # comany owns:
        has_many :admins, foreign_key: :person_id
        has_many :users, foreign_key: :person_id

    ##ROLE: as general_contractor
      ##roster relationships - not linked through a job
                  has_many :customers, foreign_key: :person_id
                  has_many :gc_sub_contractor_joins
                  private(:customers, :gc_sub_contractor_joins)

        def roster_of_customers 
          return customers 
        end
        has_many :roster_of_sub_contractors, through: :gc_sub_contractor_joins

      ##relationships through job history
                  has_many :jobs
                  private(:jobs)

        def gc_jobs 
          return jobs 
        end 

        has_many :gc_subcontractors, through: :gc_jobs
        has_many :gc_clients, through: :gc_jobs
          has_many :gc_client_customers, through: :gc_jobs #SCOPE FILTER BY CLASS
          has_many :gc_client_companies, through: :gc_jobs #SCOPE FILTER BY CLASS

    ##ROLE: as sub_contractor
      ##roster relationships
                  has_many :sc_general_contractor_joins #private method
                  private (:sc_general_contractor_joins)

        has_many :groster_of_general_contractors, through: :sc_general_contractor_joins

      ##relationships through job history
                  has_many :subcontracts
                  private (:subcontracts)
        has_many :sc_jobs, through: :subcontracts
        has_many :sc_clients, through: :subcontracts

end
