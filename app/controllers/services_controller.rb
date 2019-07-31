class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
      user = current_user
      @subscription = Subscription.new(user_id: user.id, service_id: params[:id])
      
      @service = Service.find_by(id: params[:id])
    
  end



end
