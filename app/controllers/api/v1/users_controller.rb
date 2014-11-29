class Api::V1::UsersController < Api::ApiController 

  def create
    raise_errors_if_empty_params :device_id
    @user = User.create(param_permit)
    render json: @user
  end

  private
    def param_permit
      params.permit(:age, :country_origin, :device_id)
    end
end