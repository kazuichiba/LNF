  class PagesController < ApplicationController
    before_filter :authenticate_user!

  helper_method :resource, :resource_name, :devise_mapping
  
  def index

  end

  def dashboard
    @search = Task.search(params[:q])
    @result = @search.result
    @pending_tasks = @result.pending
    @completed_tasks = @result.completed
  end
  
  protected
  # these methods are the methods required to use to the devise form
  def resource
    @resource ||= User.new
  end

  def resource_name
    :user
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
