class LuteinsController < ApplicationController
  before_action :set_lutein, only: [:show, :edit, :update, :destroy]

  # GET /luteins
  # GET /luteins.json
  def index
    @luteins = Lutein.all
  end

  # GET /luteins/1
  # GET /luteins/1.json
  def show
  end

  # GET /luteins/new
  def new
    @lutein = Lutein.new
  end

  # GET /luteins/1/edit
  def edit
  end

  # POST /luteins
  # POST /luteins.json
  def create
    @lutein = Lutein.new(lutein_params)

    respond_to do |format|
      if @lutein.save
        format.html { redirect_to @lutein, notice: 'Lutein was successfully created.' }
        format.json { render :show, status: :created, location: @lutein }
      else
        format.html { render :new }
        format.json { render json: @lutein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /luteins/1
  # PATCH/PUT /luteins/1.json
  def update
    respond_to do |format|
      if @lutein.update(lutein_params)
        format.html { redirect_to @lutein, notice: 'Lutein was successfully updated.' }
        format.json { render :show, status: :ok, location: @lutein }
      else
        format.html { render :edit }
        format.json { render json: @lutein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /luteins/1
  # DELETE /luteins/1.json
  def destroy
    @lutein.destroy
    respond_to do |format|
      format.html { redirect_to luteins_url, notice: 'Lutein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lutein
      @lutein = Lutein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lutein_params
      params.require(:lutein).permit(:name, :description, :picture, :commend)
    end
end
