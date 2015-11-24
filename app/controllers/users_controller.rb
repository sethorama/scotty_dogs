class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                session[:user_id] = @user.id
                format.html { redirect_to puppies_path, success: 'You have signed up.' }
            else
                format.html { render action: 'new' }
            end
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
