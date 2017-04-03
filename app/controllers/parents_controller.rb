class ParentsController < ApplicationController

  def create
    @alumn = Alumn.find(params[:alumn_id])
    @parent = alumn.parent.create(parent_params)

    redirect_to alumn_path(@alumn)
  end

  private
    def parent_params
      params.require(:parent).permit(:cpf_parent,:name_parent,:address_parent,:phone_parent,:sex_parent,:rg_parent)
    end
end
