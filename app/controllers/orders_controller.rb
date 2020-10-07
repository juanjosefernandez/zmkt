class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :get_cart

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    # @order.cart_id = @cart.id
    # set user id to current user id if logged in
    @cart.line_items.each do |item|
      @order.line_items << item
      item.cart_id = nil
    end
    respond_to do |format|
      if @order.save
        # make cart_id in order nil (make sure cart_id is optional)
        Cart.destroy(session[:cart_id])
        session[:cart_id] = nil
        format.html { redirect_to root_path, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
    #  In the future I wish to use the following instead of the above:
    # @order.save
    # Cart.destroy(session[:cart_id])
    # session[:cart_id] = nil
    # redirect_to root_path


  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    def get_cart
      @cart = Cart.find(session[:cart_id])
    end


    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:name, :address, :city, :state)
    end
end
