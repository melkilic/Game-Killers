class UsersController < ApplicationController

    skip_before_action(:check_login, only: [:view_login, :handle_login])

def view_login
    render(:login)
end

# def handle_login
#     user = User.find_by({ username: params[:username] })
#     if(user.authenticate(params[:password_digest]))
#         session[:user_id] = user.id
#         redirect_to('/trivia')
#     else
#         p "Login Failed"
#     end
# end
    
   def index
        @users= User.all
   end

    def show
        @user= User.find(params[:id])
    end
    
    def new
        @user=User.new
    end

    def create
        @user=User.new(user_params)
    end

    def edit
        @user =User.find(params[:id])
    end

    def update
        @user= User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user)
    end
   
    private
    def user_params
        params.require(:user).permit(:name,:email_address,:password_digest,:username)
    end
end