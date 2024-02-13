 class V1::SessionsController < ApplicationController
    def create
        user = User.where(email: params[:email]).first

        if user&.valid_password?(params[:password])
            render json: user.as_json(only: [:email, :authentication_token]), status: :ok
        else
            head(:unauthorized)
        end
    end

    def destroy
    end
 end 