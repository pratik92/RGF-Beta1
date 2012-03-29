class ApplicationController < ActionController::Base
  protect_from_forgery
#  before_filter :authenticate_user!
  check_authorization :except => [:index, :show], :unless => :devise_controller? 
 rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

 def current_ability
    @current_ability ||= Ability.new(current_admin_user)
  end

  def index 
  end

  def new
    @listing = Listing.new
  end


end
