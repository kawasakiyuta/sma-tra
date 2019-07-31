class SubscriptionsController < ApplicationController
  def index
    user = current_user
    @subscriptions = user.subscriptions
    
  end

  def show
    @subscription = Subscription.find(params[:id])
  end

  def create
    @service 
    @subscription = Subscription.new(subscription_params)
    @subscription.save
    user = current_user
    @subscriptions = user.subscriptions
    render :index
  end

  def update
    subscription = Subscription.find(params[:id])
    if subscription.user_id == current_user.id
      subscription.update(subscription_params)
    end
    user = current_user
    @subscriptions = user.subscriptions
    render :index
  end


  private

  def subscription_params
    params.require(:subscription).permit(:email_address, :password, :phone, :contract_number, :service_id, :in_use).merge(user_id: current_user.id)
  end
end
