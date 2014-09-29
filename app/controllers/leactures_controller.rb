class LeacturesController < ApplicationController
  before_action :set_leacture, only: [:show, :edit, :update, :destroy]

  # GET /leactures
  # GET /leactures.json
  def index
    @leactures = Leacture.all
  end

  # GET /leactures/1
  # GET /leactures/1.json
  def show
  end

  # GET /leactures/new
  def new
    @leacture = Leacture.new
  end

  # GET /leactures/1/edit
  def edit
  end

  # POST /leactures
  # POST /leactures.json
  def create
    @leacture = Leacture.new(leacture_params)
    if params['leacture']['p_document'].nil?
      @leacture.p_document = Presentation.find(params['leacture']['presentation_id']).document
    end
    respond_to do |format|
      if @leacture.save
        format.html { redirect_to @leacture, notice: 'Leacture was successfully created.' }
        format.json { render :show, status: :created, location: @leacture }
      else
        format.html { render :new }
        format.json { render json: @leacture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leactures/1
  # PATCH/PUT /leactures/1.json
  def update
    if params['leacture']['p_document'].nil?
      @leacture.p_document = Presentation.find(params['leacture']['presentation_id']).document
    end
    respond_to do |format|
      if @leacture.update(leacture_params)
        format.html { redirect_to @leacture, notice: 'Leacture was successfully updated.' }
        format.json { render :show, status: :ok, location: @leacture }
      else
        format.html { render :edit }
        format.json { render json: @leacture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leactures/1
  # DELETE /leactures/1.json
  def destroy
    @leacture.destroy
    respond_to do |format|
      format.html { redirect_to leactures_url, notice: 'Leacture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leacture
      @leacture = Leacture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leacture_params
      params.require(:leacture).permit(:title, :description, :p_title, :p_description, :p_document)
    end
end
