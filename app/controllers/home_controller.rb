class HomeController < ApplicationController
  def index
    @json   = Event.find(:all).to_gmaps4rails
    @event  = Event.page(3)
    @group  = Group.page(3)
    @listing  = Listing.page(3)
  end

  def how_it_works
  end
  def privacy_policy
  end
  def terms_and_conditions 
  end
end

