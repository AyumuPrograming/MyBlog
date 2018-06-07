class MessaagesController < ApplicationController
  before_action :set_messaage, only: [:show, :edit, :update, :destroy]

  # GET /messaages
  # GET /messaages.json
  def index
    @messaages = Messaage.all
  end

  # GET /messaages/1
  # GET /messaages/1.json
  def show
  end

  # GET /messaages/new
  def new
    @messaage = Messaage.new
  end

  # GET /messaages/1/edit
  def edit
  end

  # POST /messaages
  # POST /messaages.json
  def create
    @messaage = Messaage.new(messaage_params)

    respond_to do |format|
      if @messaage.save
        format.html { redirect_to @messaage, notice: 'Messaage was successfully created.' }
        format.json { render :show, status: :created, location: @messaage }
      else
        format.html { render :new }
        format.json { render json: @messaage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messaages/1
  # PATCH/PUT /messaages/1.json
  def update
    respond_to do |format|
      if @messaage.update(messaage_params)
        format.html { redirect_to @messaage, notice: 'Messaage was successfully updated.' }
        format.json { render :show, status: :ok, location: @messaage }
      else
        format.html { render :edit }
        format.json { render json: @messaage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messaages/1
  # DELETE /messaages/1.json
  def destroy
    @messaage.destroy
    respond_to do |format|
      format.html { redirect_to messaages_url, notice: 'Messaage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messaage
      @messaage = Messaage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def messaage_params
      params.require(:messaage).permit(:title, :message)
    end
end
