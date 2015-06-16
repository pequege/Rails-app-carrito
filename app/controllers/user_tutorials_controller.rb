class UserTutorialsController < ApplicationController
  def new
    @order = UserTutorial.new
    @tutorial = Tutorial.find(params[:tutorial_id])
  end

  def create
    if current_user
      @order = UserTutorial.new(order_params)
      @order.user_id = current_user.id
      if @order.save
        redirect_to tutorials_path, notice: 'Gracias por su compra'
      else
        redirect_to buy_user_tutorials_path(order_params[:tutorial_id]), notice: @order.errors.full_messages.first
      end
    else
      redirect_to user_session_path, notice: 'Debes estar loggueado para poder comprar'
    end
  end

  # def create
  #   @order = Order.new(order_params)
  #   @order.add_line_items_from_cart(@cart)

  #   respond_to do |format|
  #     if @order.save
  #       Cart.destroy(session[:cart_id])
  #       session[:cart_id] = nil
  #       OrderNotifier.received(@order).deliver
  #       format.html { redirect_to store_url, notice: I18n.t('.thanks') }
  #       format.json { render action: 'show', status: :created,
  #         location: @order }
      
  #     else
  #       format.html { render action: 'new' }
  #       format.json { render json: @order.errors,
  #         status: :unprocessable_entity }
  #     end
  #   end
  # end

private
  def order_params
    params.require(:user_tutorial).permit(:name, :pay_type, :tutorial_id, :email, :address)
  end
end
