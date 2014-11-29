class Api::V1::UsersController < Api::ApiController 

  def create
    raise_errors_if_empty_params :device_id
    @user = User.find_by(device_id: params[:device_id])
    if !@user.present?
      @user = User.create(param_permit)
    end
    render json: @user
  end

  private
    def param_permit
      params.permit(:age, :country_origin, :device_id)
    end
end