class RegistersController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:index, :show, :edit, :update, :destroy]

  def create
    @register = Register.new(register_params)
    if @register.save
      redirect_to root_path
    else
      render :action => 'new'
    end
  end



  private

    def register_params
      params.require(:register).permit(:first_name, :last_name, :email)
    end
end
