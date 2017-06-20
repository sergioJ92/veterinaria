class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /pets
  # GET /pets.json
  def index
    @pets = []
    if current_user.role.name != 'cliente'
        @pets = Pet.all
    else
      if !current_user.nil?
        id = current_user.data_id
        if !id.nil?
          @client = Client.find(id)
          @pets = @client.pets
        end
      end
    end
  end

  def service
    @pet = Pet.find(params['id'])
    @register = Register.new
  end

  def saveService
    values = params['post']
    @register = Register.new
    @register.pet_id = values['pet_id']
    @register.service_id = values['service_id']
    @register.veterinary_id = values['veterinary_id']
    @register.registerDate = values['registerDate']
    respond_to do |format|
      if @register.save
        format.html { redirect_to pets_path, notice: 'successfully register.' }
      end
    end    
  end

  # GET /pets/1
  # GET /pets/1.json
  def show
  end

  # GET /pets/new
  def new
    @pet = Pet.new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  # POST /pets.json
  def create
    @pet = Pet.new(pet_params)

    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: 'Pet was successfully created.' }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  # PATCH/PUT /pets/1.json
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: 'Pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  # DELETE /pets/1.json
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: 'Pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_params
      params.require(:pet).permit(:ci, :name, :gender, :race, :bornDate, :client_id)
    end
end
