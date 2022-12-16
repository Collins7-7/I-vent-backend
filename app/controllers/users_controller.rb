class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index
        render json: User.all 
    end
    
    def show
        user = User.find_by(id: session[:user_id])
        if user
          render json: user, status: :ok
        else
          render json: {error: "Not authorized"}, status: :unauthorized
        end
    end

    def create
        user = User.create!(user_params)
        session[:user_id] =user.id
        render json: user, status: :created
    end

    def update
        user = find_user
        if user
            user.update!(user_params)
           render json: user
        else
           render json: { error: "user not found" }, status: :not_found
         end
    end

    def destroy
        user = find_user
        user.destroy
        head :no_content
    end

    


    private
    def user_params
        params.permit( :full_name, :email, :phone_number, :age, :gender, :password_digest, :image_url)
    end
    def find_user
        User.find_by(id: params[:id])
    end
    def render_unprocessable_entity(invalid)
        return render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
