class Comany < ActiveRecord::Base

  #role: as comany,  
    # comany owns:
      has_many :admins, forgein_key: :person_id
      has_many :users, forgein_key: :person_id
    

  #role: as general_contractor
    ##roster relationships - not linked through a job
      private has_many :customers, forgein_key: :person_id end #human clients
      private has_many :gc_sub_contractor_joins end

      def roster_of_customers return customers end
      has_many :roster_of_sub_contractors, through: :gc_sub_contractor_joins

    ##relationships through job history
      private has_many :jobs end
      def gc_jobs return jobs end 

      has_many :gc_subcontractors, through: :gc_jobs
      has_many :gc_clients, through: :gc_jobs
        has_many :gc_client_customers, through: :gc_jobs #SCOPE FILTER by class
        has_many :gc_client_companies, through: :gc_jobs #SCOPE FILTER by class

  #role: as sub_contractor
    ##roster relationships
      private has_many :sc_general_contractor_joins end
      has_many :groster_of_general_contractors, through: :sc_general_contractor_joins

    ##relationships through job history
      private has_many :subcontracts end
      has_many :sc_jobs, through: :subcontracts
      has_many :sc_clients, through: :subcontracts
  

end
