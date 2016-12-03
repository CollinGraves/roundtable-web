class RoundtablesController < ApplicationController
  before_action :set_roundtable, only: [:show, :edit, :update, :destroy]

  # GET /roundtables
  # GET /roundtables.json
  def index
    @roundtables = Roundtable.all
  end

  # GET /roundtables/1
  # GET /roundtables/1.json
  def show
  end

  # GET /roundtables/new
  def new
    @roundtable = Roundtable.new
  end

  # GET /roundtables/1/edit
  def edit
  end

  # POST /roundtables
  # POST /roundtables.json
  def create
    @roundtable = Roundtable.new(roundtable_params)

    respond_to do |format|
      if @roundtable.save
        format.html { redirect_to @roundtable, notice: 'Roundtable was successfully created.' }
        format.json { render :show, status: :created, location: @roundtable }
      else
        format.html { render :new }
        format.json { render json: @roundtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roundtables/1
  # PATCH/PUT /roundtables/1.json
  def update
    respond_to do |format|
      if @roundtable.update(roundtable_params)
        format.html { redirect_to @roundtable, notice: 'Roundtable was successfully updated.' }
        format.json { render :show, status: :ok, location: @roundtable }
      else
        format.html { render :edit }
        format.json { render json: @roundtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roundtables/1
  # DELETE /roundtables/1.json
  def destroy
    @roundtable.destroy
    respond_to do |format|
      format.html { redirect_to roundtables_url, notice: 'Roundtable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roundtable
      @roundtable = Roundtable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roundtable_params
      params.require(:roundtable).permit(:name, :public)
    end
end
