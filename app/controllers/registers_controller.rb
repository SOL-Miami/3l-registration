class RegistersController < InheritedResources::Base

  private

    def register_params
      params.require(:register).permit(:first_name, :last_name, :email)
    end
end

