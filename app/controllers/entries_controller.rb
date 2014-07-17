class EntriesController < AuthenticatedController

  # respond_to :html, :json
  respond_to :json

  before_action :set_instance_variables  

  

  def index
    my_scope = params[:scope] || 'all'

    @entries = @job.entries.send(my_scope)#.includes(:attachments)
    # @entries = @entries
    # puts entries.length 
    respond_with @entries.to_json(include: {attachments:{}, photos:{}, docs:{}, audios:{} })

    # format.json  { render :json => @birds.to_json(:include => {:bird_colorations => {:include => :color}, :seasons => {}, :habitats => {}, :image_holders => {}}) }
  end



  def show
    # puts 'Running jobs#show'
    # puts "current_admin is #{current_admin}"
    # puts "current_admin.company_id is #{current_admin.company_id}"
    # puts "current_admin.company is #{current_admin.company}"

    # puts "current_admin.company is #{current_admin.company}"

    
    # @jobs = current_admin.company.jobs
    # @job = Job.find(params[:id])
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.delete
    respond_with @entry
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes!(sanatized_params)
    # ap job
    respond_with @entry
  end



  private

  def sanatized_params 
    params.require(:entry).permit(:text_blob, :auto_generated_from_incoming_email, :read_status, :visable_to_job_client_status, :visable_to_job_subcontractors_status)
    # return params.require(:id).permit(:closed, :paused)
  end

  def set_instance_variables
    @company = current_admin.company
    @job = Job.find(params[:job_id])
  end

end
