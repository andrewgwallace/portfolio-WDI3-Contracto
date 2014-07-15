class EntriesController < AuthenticatedController

    respond_to :html, :json

  def index
    job = Job.find(params[:job_id])
    entries = job.entries
    puts entries.length 
    respond_with entries
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

  def update
    job = Job.find(params[:id])
    job.update_attributes!(sanatized_ruby_params)
    # ap job
    respond_with job
  end




  def sanatized_ruby_params 
    params.require(:job).permit(:closed_status, :paused_status);
    # return params.require(:id).permit(:closed, :paused)
  end

  def sanatized_jaon
    params.require(:entry).permit();
  end

end
