class ActaController < ApplicationController
  before_action :set_actum, only: %i[ show edit update destroy ]

  # GET /acta or /acta.json
  def index
    @acta = Actum.all
    @articulo = Actum.group(:articulo).count
  end

  # GET /acta/1 or /acta/1.json
  def show
  end

  # GET /acta/new
  def new
    @actum = Actum.new
  end

  # GET /acta/1/edit
  def edit
  end

  # POST /acta or /acta.json
  def create
    @actum = Actum.new(actum_params)

    respond_to do |format|
      if @actum.save
        format.html { redirect_to @actum, notice: "Actum was successfully created." }
        format.json { render :show, status: :created, location: @actum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acta/1 or /acta/1.json
  def update
    respond_to do |format|
      if @actum.update(actum_params)
        format.html { redirect_to @actum, notice: "Actum was successfully updated." }
        format.json { render :show, status: :ok, location: @actum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @actum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acta/1 or /acta/1.json
  def destroy
    @actum.destroy
    respond_to do |format|
      format.html { redirect_to acta_url, notice: "Actum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actum
      @actum = Actum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def actum_params
      params.require(:actum).permit(:num_acta, :dominio, :fecha, :tipo_vehiculo, :pertenece_a, :juzgado, :articulo, :autoridad)
    end
end
