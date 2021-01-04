class RyourisController < ApplicationController
  before_action :set_ryouri, only: [:show, :edit, :update, :destroy]

  # GET /ryouris
  # GET /ryouris.json
  def index
    @ryouris = Ryouri.all
    @ingredients = Ingredient.all
  end

  # GET /ryouris/1
  # GET /ryouris/1.json
  def show
    @ryouri = Ryouri.find(params[:id])
    @ingredients = @ryouri.ingredients
  end

  # GET /ryouris/new
  def new
    @ryouri = Ryouri.new
  end

  # GET /ryouris/1/edit
  def edit
  end

  # POST /ryouris
  # POST /ryouris.json
  def create
    @ryouri = Ryouri.new(ryouri_params)

    respond_to do |format|
      if @ryouri.save
        format.html { redirect_to @ryouri, notice: 'Ryouri was successfully created.' }
        format.json { render :show, status: :created, location: @ryouri }
      else
        format.html { render :new }
        format.json { render json: @ryouri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ryouris/1
  # PATCH/PUT /ryouris/1.json
  def update
    respond_to do |format|
      if @ryouri.update(ryouri_params)
        format.html { redirect_to @ryouri, notice: 'Ryouri was successfully updated.' }
        format.json { render :show, status: :ok, location: @ryouri }
      else
        format.html { render :edit }
        format.json { render json: @ryouri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ryouris/1
  # DELETE /ryouris/1.json
  def destroy
    @ryouri.destroy
    respond_to do |format|
      format.html { redirect_to ryouris_url, notice: 'Ryouri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ryouri
      @ryouri = Ryouri.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ryouri_params
      params.require(:ryouri).permit(:name, { ingredient_ids: [] }, :photo, :howtomake) #:ingredient_id
    end
end
