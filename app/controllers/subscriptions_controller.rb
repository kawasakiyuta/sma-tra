class SubscriptionsController < ApplicationController
  before_action :user_info
  def index
    @today = Time.new
    @one_day_seconds = 60 * 60 * 24
    @inuse_subscriptions = @subscriptions.where(in_use: 0)
    @canceling_subscriptions = @subscriptions.where(in_use: 1)
    @nouse_subscriptions = @subscriptions.where(in_use: 2)

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
    redirect_to action: 'index'
  end

  def update
    subscription = Subscription.find(params[:id])
    if subscription.user_id == current_user.id
      subscription.update(subscription_params)
    end
    user = current_user
    @subscriptions = user.subscriptions
    redirect_to action: 'index'
  end


  private

  def user_info
    @user = current_user
    @subscriptions = @user.subscriptions
  end
  def subscription_params
    params.require(:subscription).permit(:email_address, :password, :phone, :contract_number, :service_id, :in_use).merge(user_id: current_user.id)
  end
end
