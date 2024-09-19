class DefensesController < ApplicationController
  before_action :set_defense, only: %i[ show edit update destroy ]

  # GET /defenses or /defenses.json
  def index
    @defenses = Defense.all
  end

  # GET /defenses/1 or /defenses/1.json
  def show
  end

  # GET /defenses/new
  def new
    @defense = Defense.new
  end

  # GET /defenses/1/edit
  def edit
  end

  # POST /defenses or /defenses.json
  def create
    @defense = Defense.new(defense_params)

    respond_to do |format|
      if @defense.save
        format.html { redirect_to @defense, notice: "Defense was successfully created." }
        format.json { render :show, status: :created, location: @defense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @defense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /defenses/1 or /defenses/1.json
  def update
    respond_to do |format|
      if @defense.update(defense_params)
        format.html { redirect_to @defense, notice: "Defense was successfully updated." }
        format.json { render :show, status: :ok, location: @defense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @defense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /defenses/1 or /defenses/1.json
  def destroy
    @defense.destroy!

    respond_to do |format|
      format.html { redirect_to defenses_path, status: :see_other, notice: "Defense was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_defense
      @defense = Defense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def defense_params
      params.require(:defense).permit(:townhall, :content)
    end
end
