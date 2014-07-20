# == Schema Information
#
# Table name: companies
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  office_phone :string(255)
#  logo_url     :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Company < ActiveRecord::Base
  #ASSOCIATIONS
    ##COMPANY OWNS:
      has_many :admins
      has_many :users

      has_many :roster_sub_contractors, through: :sub_contractor_joins, class_name: :Company

      has_many :roster_company_clients, class_name: :Company
      has_many :roster_customer_clients, class_name: :Customer
      def roster_clients
        return roster_company_clients.merge(roster_customer_clients)
      end
  

    ##ROLE: as general_contractor (relationships through job history)
      has_many :jobs, class_name: :Job, foreign_key: :general_contractor_id
      has_many :jobs, class_name: :Job, foreign_key: :general_contractor_id

        has_many :jobs_subcontractors, through: :jobs, source: :subcontractors
        has_many :jobs_clients, through: :jobs, source: :client
          # has_many :jobs_customer_clients, through: :jobs #SCOPE FILTER BY CLASS
          # has_many :jobs_company_clients, through: :jobs #SCOPE FILTER BY CLASS    
    










  # has_many :customers, foreign_key: :person_id
  
  # has_many :sub_contractors_on_roster


  # has_many :jobs
  # # private(:customers, :gc_sub_contractor_joins, :jobs)

  
  

  #   ##ROLE: as sub_contractor
  #     ##roster relationships
  #                 has_many :sc_general_contractor_joins #private method
  #                 private (:sc_general_contractor_joins)

  #       has_many :roster_of_general_contractors, through: :sc_general_contractor_joins

  #     ##relationships through job history
  #                 has_many :subcontracts
  #                 private (:subcontracts)
  #       has_many :sc_jobs, through: :subcontracts
  #       has_many :sc_clients, through: :subcontracts


  #   ##ROLE: as client
  #     ##relationships through job history
  #       # NEED A RELATIONSHIP TO POINT TO A JOB WHEN CLIENT

  #   ##ROLE: as comany,  
  #     # comany owns:
  #       has_many :admins, foreign_key: :person_id
  #       has_many :users, foreign_key: :person_id
  #       def clients_on_roster
  #         # return customers 
  #       end
  #       def customer_clients_on_roster
  #       end
  #       def company_clients_on_roster
  #       end

  #       has_many :subcontractors_on_roster, through: :sub_contractor_rosters
  #       has_many :clients_on_roster, through: :sub_contractor_rosters

  

end
