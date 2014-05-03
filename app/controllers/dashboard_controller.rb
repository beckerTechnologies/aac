class DashboardController < ApplicationController
	before_filter :authenticate_user!
	layout "application"
	
  def index
  # un comment this and dashboard/index code to check how the images are saved. 
  #@user = Medium.find(1)
  #@user1 = Medium.find(2)
  #@user2 = Medium.find(3)
  end
end
