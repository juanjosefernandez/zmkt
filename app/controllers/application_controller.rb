class ApplicationController < ActionController::Base
    # protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
    include ApplicationHelper
    include CurrentCart
    before_action :set_cart


    rescue_from ActiveRecord::RecordNotFound do
      flash[:warning] = 'Resource not found.'
      redirect_back_or root_path
    end
    
    def redirect_back_or(path)
      redirect_to request.referer || path
    end

    helper_method :mailbox, :conversation

    private
    def conversation
      @conversation ||= mailbox.conversations.find(params[:id])
    end
    def mailbox
      @mailbox ||= current_user.mailbox
    end
  
    protected
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :avatar])
    end

    
  end