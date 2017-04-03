class AlumnsController < ApplicationController

  def index
    @alumns= Alumn.all
  end

  def new
    @alumn= Alumn.new
  end

  def show
    @alumn= Alumn.find(params[:id])
  end

  def edit
    @alumn = Alumn.find(params[:id])
  end

  def update
    @alumn = Alumn.find(params[:id])
    if @alumn.update(alumn_params)
      redirect_to @alumn
    else
      render 'edit'
    end
  end

  def create
    @alumn = Alumn.new(alumn_params)

    if @alumn.save
      redirect_to @alumn
    else
      render 'new'
    end
  end

  def destroy
    @alumn=Alumn.find(params[:id])
    @alumn.destroy

    redirect_to alumns_path
  end

  private
    def alumn_params
      params.require(:alumn).permit(:registry_alumn,:name_alumn,:class_alumn,:address_alumn,:phone_alumn,:birth_date_alumn,:sex_alumn)
    end

end
