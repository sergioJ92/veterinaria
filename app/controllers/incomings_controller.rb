class IncomingsController < ApplicationController
  before_action :set_incoming, only: [:show, :edit, :update, :destroy]

  # GET /incomings
  # GET /incomings.json
  def index
    @incomings = Incoming.all
    @total = 0
    @incomings.each do |income|
      @total += income.ammount
    end
  end

  # GET /incomings/1
  # GET /incomings/1.json
  def show
  end

  # GET /incomings/new
  def new
    @incoming = Incoming.new
  end

  # GET /incomings/1/edit
  def edit
  end

  # POST /incomings
  # POST /incomings.json
  def create
    @incoming = Incoming.new(incoming_params)

    respond_to do |format|
      if @incoming.save
        format.html { redirect_to @incoming, notice: 'Incoming was successfully created.' }
        format.json { render :show, status: :created, location: @incoming }
      else
        format.html { render :new }
        format.json { render json: @incoming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomings/1
  # PATCH/PUT /incomings/1.json
  def update
    respond_to do |format|
      if @incoming.update(incoming_params)
        format.html { redirect_to @incoming, notice: 'Incoming was successfully updated.' }
        format.json { render :show, status: :ok, location: @incoming }
      else
        format.html { render :edit }
        format.json { render json: @incoming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomings/1
  # DELETE /incomings/1.json
  def destroy
    @incoming.destroy
    respond_to do |format|
      format.html { redirect_to incomings_url, notice: 'Incoming was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incoming
      @incoming = Incoming.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incoming_params
      params.require(:incoming).permit(:details, :date, :ammount)
    end
end
