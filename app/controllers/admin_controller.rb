class AdminController < ApplicationController
  def index
  	@admin = Admin.new
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
      render "show"
    else
      flash[:notice] = "Please enter the attributes to save the form"
      flash[:color]= "invalid"
    end
  end

  def show
  end

  private

  def admin_params
  	params.require(:admin).permit(:topic, :speaker, :time)
  end
end
