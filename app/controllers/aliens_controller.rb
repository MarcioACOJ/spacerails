class AliensController < ApplicationController
  before_action :set_alien, only: %i[ show edit update destroy ]

  # GET /aliens or /aliens.json
  def index
    @aliens = Alien.all
  end

  # GET /aliens/1 or /aliens/1.json
  def show
  end

  # GET /aliens/new
  def new
    @alien = Alien.new
  end

  # GET /aliens/1/edit
  def edit
  end

  # POST /aliens or /aliens.json
  def create
    @alien = Alien.new(alien_params)

    respond_to do |format|
      if @alien.save
        format.html { redirect_to @alien, notice: "Alien was successfully created." }
        format.json { render :show, status: :created, location: @alien }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @alien.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aliens/1 or /aliens/1.json
  def update
    respond_to do |format|
      if @alien.update(alien_params)
        format.html { redirect_to @alien, notice: "Alien was successfully updated." }
        format.json { render :show, status: :ok, location: @alien }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @alien.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aliens/1 or /aliens/1.json
  def destroy
    @alien.destroy
    respond_to do |format|
      format.html { redirect_to aliens_url, notice: "Alien was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alien
      @alien = Alien.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def alien_params
      params.require(:alien).permit(:name, :age, :planet_id, :power_ids => [])
    end
end
