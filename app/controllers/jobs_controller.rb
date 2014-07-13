class JobsController < AuthenticatedController

    respond_to :html, :json

  def index
    jobs = current_admin.company.jobs
    puts jobs
    respond_with jobs
  end

  def show
    # puts 'Running jobs#show'
    # puts "current_admin is #{current_admin}"
    # puts "current_admin.company_id is #{current_admin.company_id}"
    # puts "current_admin.company is #{current_admin.company}"

    # puts "current_admin.company is #{current_admin.company}"

    @company = current_admin.company
    # @jobs = current_admin.company.jobs
    # @job = Job.find(params[:id])
  end

  def destroy
    job = Job.find(params[:id])
    job.delete
    respond_with job
  end



end
