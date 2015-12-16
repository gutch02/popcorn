class PopcornsController < ApplicationController
  before_action :set_popcorn, only: [:show, :edit, :update, :destroy]

  # GET /popcorns
  # GET /popcorns.json
  def index
    @popcorns = Popcorn.all
  end

  # GET /popcorns/1
  # GET /popcorns/1.json
  def show
  end

  # GET /popcorns/new
  def new
    @popcorn = Popcorn.new
  end

  # GET /popcorns/1/edit
  def edit
  end

  # POST /popcorns
  # POST /popcorns.json
  def create
    @popcorn = Popcorn.new(popcorn_params)

    respond_to do |format|
      if @popcorn.save
        format.html { redirect_to @popcorn, notice: 'Popcorn was successfully created.' }
        format.json { render :show, status: :created, location: @popcorn }
      else
        format.html { render :new }
        format.json { render json: @popcorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /popcorns/1
  # PATCH/PUT /popcorns/1.json
  def update
    respond_to do |format|
      if @popcorn.update(popcorn_params)
        format.html { redirect_to @popcorn, notice: 'Popcorn was successfully updated.' }
        format.json { render :show, status: :ok, location: @popcorn }
      else
        format.html { render :edit }
        format.json { render json: @popcorn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /popcorns/1
  # DELETE /popcorns/1.json
  def destroy
    @popcorn.destroy
    respond_to do |format|
      format.html { redirect_to popcorns_url, notice: 'Popcorn was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_popcorn
      @popcorn = Popcorn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def popcorn_params
      params.require(:popcorn).permit(:flavor, :description, :picture)
    end
end
