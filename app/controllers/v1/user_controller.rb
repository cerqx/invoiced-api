class V1::UserController < ApplicationController
    def create 
    end

    private 

    def user_params
        params.require(:user).permit(:email, :password, :confirm_password)
    end 
end