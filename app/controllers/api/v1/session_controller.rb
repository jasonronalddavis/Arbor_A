class Api::V1::SessionController < ApplicationController
  
  
  
  
  def create
    #binding.pry
    @user = User.find_for_authentication(name: session_params[:name])
   # @user_info = request.env['omniauth.auth']
   # raise user_info
   if  @user != nil && @user.valid_password?(session_params[:password]) 
       sign_in(@user)
       render json: UserSerializer.new(@user), status: :ok
      else
        render json: {error: "Invalid username or password"}
      end
      end
  
  
  
      def login
        
        @user = current_api_v1_user
        if @user 
          render json: UserSerializer.new(@user)
         #   render json: {user: @user, message: "signed_in"}
        else
            render json: {error: "Invalid username or password"}
        end  
        end
  
  
  
  #ROUTED TO USERS CREATE
  def signup
    @user = User.find_by(name: params[:name])
    if @user
    #  token = encode_token({user_id: @user.id})
     # render json: {user: @user, token: token}
     render json: UserSerializer.new(@users) 
    else
    render json: {error: "Invalid username or password"}
  end  
  end
  
  
  
      def get_current_user
          @user = current_api_v1_user
          sign_in(@user)
          if @user.id != ""
          render json: UserSerializer.new( @user)
         # binding.pry
        else
          render json: {
            error: "Not logged in"
          }
        end
      end
     
  
  
  
  
      def destroy 
      #  binding.pry
        sign_out(current_api_v1_user)
        render json: {
          notice: "Not logged in"
        }
      end
      
  
      #MAY NOT USE SANITIZED SESSION PARAMS. LEAVING FOR POTENTIAL USE
      def session_params 
        # binding.pry
        params.require(:session).permit(:user_id, :id, :password, :name, :email)   
      end
  
    end
  
  