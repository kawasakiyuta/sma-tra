class ServicesController < ApplicationController
  before_action :user_info
  def index
    @services = Service.all
  end

  def show
      user = current_user
      @subscription = Subscription.find_by(user_id: user.id, service_id: params[:id])
      if @subscription
        redirect_to action: 'index'
      else
        @subscription = Subscription.new(user_id: user.id, service_id: params[:id])
        @service = Service.find_by(id: params[:id])
      end
  end

  private

  def user_info
    @user = current_user
    @subscriptions = @user.subscriptions
  end

end
