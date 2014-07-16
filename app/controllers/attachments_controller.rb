class AttachmentsController < ApplicationController

  respond_to :json

  # before_action :set_attachment, only: [:show, :edit, :update, :destroy]

  # # GET /attachments
  # # GET /attachments.json
  # def index
  #   @attachments = Attachment.all
  # end

  # # GET /attachments/1
  # # GET /attachments/1.json
  # def show
  # end

  # # GET /attachments/new
  # def new
  #   @attachment = Attachment.new
  # end

  # # GET /attachments/1/edit
  # def edit
  # end

  
  def create
    # POST /attachments.json
    #FIX: this should go through a sanatizer, but can't because the hash is nesting funny. #FIX
      @attachment = Attachment.new(sanatized_params)
    #HACK
      @attachment.entry_id = params['entry_id'].to_i


    if @attachment.save
      respond_with @attachment
    else
      render json: @attachment.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /attachments/1
  # # PATCH/PUT /attachments/1.json
  # def update
  #   respond_to do |format|
  #     if @attachment.update(sanatized_params)
  #       format.html { redirect_to @attachment, notice: 'Attachment was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @attachment }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @attachment.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /attachments/1
  # # DELETE /attachments/1.json
  # def destroy
  #   @attachment.destroy
  #   respond_to do |format|
  #     format.html { redirect_to attachments_url, notice: 'Attachment was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sanatized_params
      params.require(:attachment).permit(:file, :entry_id)
    end
end
