class HomeController < ApplicationController
  def index
    @json   = Event.find(:all).to_gmaps4rails
    @event  = Event.order(:created_at).page params[:page]
    @group  = Group.order(:created_at).page params[:page]
    @listing  = Listing.order(:create_at).page params[:page]
  end

  def how_it_works
  end
  def privacy_policy
  end
  def terms_and_conditions 
  end
end
