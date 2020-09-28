class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    helper_method :mailbox

    rescue_from ActiveRecord::RecordNotFound do
      flash[:warning] = 'Resource not found.'
      redirect_back_or root_path
    end
    
    def redirect_back_or(path)
      redirect_to request.referer || path
    end

    #private

    def mailbox
      @mailbox ||= current_user.mailbox
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end

    
  end