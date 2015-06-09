class UserTutorialsController < ApplicationController
  def new
    @order = UserTutorial.new
    @tutorial = Tutorial.find(params[:tutorial_id])
  end

  def create
    @order = UserTutorial.new(order_params)
    @order.user_id = session[:user_id]
    if @order.save
      redirect_to tutorials_path, notice: 'Gracias por su compra'
    else
      render action: 'new'
    end
  end

private
  def order_params
    params.require(:user_tutorial).permit(:name, :pay_type, :tutorial_id)
  end
end
