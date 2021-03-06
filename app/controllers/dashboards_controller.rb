class DashboardsController < ApplicationController
  before_filter :authenticate_user!

 def index
  @my_listings = Listing.page(5)

  @event = Event.page(5)

  @requested_event = MemberAttendingEventRegister.find_all_by_owner_id_and_state(current_user, 'request_sent')

  @group = Group.page(5)

  @latest_event = Event.where(:created_at => 1.days.ago .. 1.days.from_now)

  @users = User.all  

 end

end
