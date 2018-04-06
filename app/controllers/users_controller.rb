class UsersController < ApplicationController

def index

@users= User.all


end


def new
	@user= User.new

end

def create

@user = User.new(
	username: params[:username],
	 email: params[:email],
	  password: params[:password]
	  )

  if @user.save
    redirect_to "/"
  else
    render :new
  end
end

def edit

@users = User.find_by(userid: params[:userid])

end

def update
@users = User.find_by(userid: params[:userid])

if !@users
redirect_to "/"

else
	@users.username = params[:username]
	@users.email = params[:email]
	@users.password = params[:password]
    @users.save
    redirect_to "/"
end

end

def destroy
	@users = User.find_by(userid: params[:userid])

    if @users.delete
      
      redirect_to root_path
    else
      
      render :destroy
    end
end
end
