class CartsController < ApplicationController

    def index
        @carts = Cart.all
        render json: @carts     
    end


     def show
        @cart = Cart.find_by_id(params[:id])
        render json: @cart
     end
     


    private
    
        def category_params 
        params.require(:cart).permit( :id, :name, user_id, :product_ids)
        end

end
