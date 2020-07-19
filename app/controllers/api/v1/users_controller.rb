class Api::V1::UsersController < ApplicationController
    def index
        render json: User.all.to_json(except: [:password_digest, :created_at, :updated_at])
    end

    def create
        puts ("NEW USER")
        puts(params)
        new_user = User.new(user_params)
        new_user.password = params[:password_digest]
        
        
        new_user.save
        render json: new_user.to_json(except: :password_digest)
    end

    private
    
    def user_params
        params.require(:user).permit(:username, :bio, :email, :country)
    end
end
