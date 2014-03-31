class AptitudesController < ApplicationController
  #Toujours regler les routes avant
  before_action :set_aptitude, only: [:show, :edit]

  def index
    @aptitudes = Aptitude.all
  end

  def show
  end

  def new
    @aptitude = Aptitude.new
  end

  def edit
  end

  def create
    @aptitude = Aptitude.new(aptitude_params)

    respond_to do |format|
      if @aptitude.save
        format.html { redirect_to action: :new, notice: 'Aptitude was successfully created.' }
      #  format.json { render action: 'new', status: :created, location: @aptitude }
      else
        format.html { render action: 'new' }
       # format.json { render json: @aptitude.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aptitude
      @aptitude = Aptitude.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aptitude_params
      params.require(:aptitude).permit(:competence, :tag, :mail)
    end
end
