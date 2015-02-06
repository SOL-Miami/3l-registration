class RegistersController < InheritedResources::Base
  before_action :authenticate_admin_user!, only: [:index, :show, :edit, :update, :destroy]
  private

    def register_params
      params.require(:register).permit(:first_name, :last_name, :email)
    end
end
