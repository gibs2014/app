class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @user = User.new
    @user.first_name = params[:first_name]
    @user.second_name = params[:second_name]
    @user.date_of_birth = params[:date_of_birth]
    @user.email_address = params[:email_address]
    @user.general_size = params[:general_size]
    @user.uk_size = params[:uk_size]
    @user.us_size = params[:us_size]
    @user.eu_size = params[:eu_size]
    @user.waist_size = params[:waist_size]
    @user.hip_size = params[:hip_size]
    @user.bust_size = params[:bust_size]
    
    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find_by(:id => params[:id])
  end

  def update
    @user = User.find_by(:id => params[:id])
    @user.first_name = params[:first_name]
    @user.second_name = params[:second_name]
    @user.date_of_birth = params[:date_of_birth]
    @user.email_address = params[:email_address]
    @user.general_size = params[:general_size]
    @user.uk_size = params[:uk_size]
    @user.us_size = params[:us_size]
    @user.eu_size = params[:eu_size]
    @user.waist_size = params[:waist_size]
    @user.hip_size = params[:hip_size]
    @user.bust_size = params[:bust_size]
    
    if @user.save
      redirect_to users_url
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find_by(:id => params[:id])
    @user.destroy
    redirect_to users_url
  end
end
