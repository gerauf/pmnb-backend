class IousController < ApplicationController

  def index
    render json: Iou.all
  end

  def create
    Iou.create(iou_params)
  end

  def destroy
    Iou.find(params[:id]).destroy
  end


  private

  def iou_params
    params.require(:params).require(:iou).permit(:name, :event, :amount, :contact, :date, :status)
  end



end
