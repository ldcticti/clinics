class JclinicsController < ApplicationController
  before_action :set_jclinic, only: %i[ show edit update destroy ]

  # GET /jclinics or /jclinics.json
  def index
    @jclinics = Jclinic.all
  end

  # GET /jclinics/1 or /jclinics/1.json
  def show
  end

  # GET /jclinics/new
  def new
    @jclinic = Jclinic.new
  end

  # GET /jclinics/1/edit
  def edit
  end

  # POST /jclinics or /jclinics.json
  def create
    @jclinic = Jclinic.new(jclinic_params)

    respond_to do |format|
      if @jclinic.save
        format.html { redirect_to jclinic_url(@jclinic), notice: "Jclinic was successfully created." }
        format.json { render :show, status: :created, location: @jclinic }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jclinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jclinics/1 or /jclinics/1.json
  def update
    respond_to do |format|
      if @jclinic.update(jclinic_params)
        format.html { redirect_to jclinic_url(@jclinic), notice: "Jclinic was successfully updated." }
        format.json { render :show, status: :ok, location: @jclinic }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jclinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jclinics/1 or /jclinics/1.json
  def destroy
    @jclinic.destroy

    respond_to do |format|
      format.html { redirect_to jclinics_url, notice: "Jclinic was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jclinic
      @jclinic = Jclinic.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jclinic_params
      params.require(:jclinic).permit(:name, :phone)
    end
end
