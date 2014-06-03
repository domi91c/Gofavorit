class RegistrationsController < Devise::RegistrationsController
	skip_before_filter :verify_authenticity_token, :only => [:ipn_notification]

	def sign_up_params
		params.require(:user).permit(:email, :password, :password_confirmation, :username)
	end

end