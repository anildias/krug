class AdminsController < ApplicationController
  def index
  	@admin = Admin.new
  	@admins = Admin.all
  end

  def new
  	@admin = Admin.new
  end

  def create
  	#render text:params[:admin] and return
  	@admin = Admin.new(admin_params)
  	if @admin.save
      flash[:notice] = "The session is saved successfully"
      flash[:color]= "valid"
      redirect_to admins_path
    else
      flash[:notice] = "Please enter the attributes to save the form"
      flash[:color]= "invalid"
      #render "new"
      redirect_to admins_path
    end
  end

  
  def destroy
    Admin.find(params[:id])
    Admin.destroy(params[:id])
    flash[:success] = "Deleted".html_safe
    redirect_to admins_path
  end

  private

  def admin_params
  	params.require(:admin).permit(:topic, :speaker, :time)
  end
end
