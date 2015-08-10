class MailContextsController < ApplicationController
  before_action :set_mail_context, only: [:show, :edit, :update, :destroy]

  # GET /mail_contexts
  # GET /mail_contexts.json
  def index
    @mail_contexts = MailContext.all
  end

  # GET /mail_contexts/1
  # GET /mail_contexts/1.json
  def show
  end

  # GET /mail_contexts/new
  def new
    @mail_context = MailContext.new
  end

  # GET /mail_contexts/1/edit
  def edit
  end

  # POST /mail_contexts
  # POST /mail_contexts.json
  def create
    @mail_context = MailContext.new(mail_context_params)

    respond_to do |format|
      if @mail_context.save
        format.html { redirect_to @mail_context, notice: 'Mail context was successfully created.' }
        format.json { render :show, status: :created, location: @mail_context }
      else
        format.html { render :new }
        format.json { render json: @mail_context.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_contexts/1
  # PATCH/PUT /mail_contexts/1.json
  def update
    respond_to do |format|
      if @mail_context.update(mail_context_params)
        format.html { redirect_to @mail_context, notice: 'Mail context was successfully updated.' }
        format.json { render :show, status: :ok, location: @mail_context }
      else
        format.html { render :edit }
        format.json { render json: @mail_context.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_contexts/1
  # DELETE /mail_contexts/1.json
  def destroy
    @mail_context.destroy
    respond_to do |format|
      format.html { redirect_to mail_contexts_url, notice: 'Mail context was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_context
      @mail_context = MailContext.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_context_params
      params.require(:mail_context).permit(:email, :message_body, :starts_at, :ends_at, :time_part, :user_id)
    end
end
