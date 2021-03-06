class RegistrationsController < Devise::RegistrationsController
 
  def new
    build_resource({})
    t = self.resource.teams.build
    respond_with self.resource
  end
 
  def create
    super
  end
 

  private



  def sign_up_params
    params.require(:user).permit(:name, :email, :teams_attributes => [ :name, :domain ])
  end

  def account_update_params
    params.require(:user)
  end
end