class CompaniesController < AuthenticatedController
  



  def show
    puts 'Running company#show'
    puts "current_admin is #{current_admin}"
    puts "current_admin.company_id is #{current_admin.company_id}"
    puts "current_admin.company is #{current_admin.company}"
    @company = current_admin.company
    @jobs = current_admin.company.jobs
  end



end
