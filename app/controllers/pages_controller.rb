  class PagesController < ApplicationController
    before_filter :authenticate_user!

  helper_method :resource, :resource_name, :devise_mapping

  def index

  end

  def dashboard
    @pending_tasks = Task.pending
    @completed_tasks = Task.completed
    @task = Task.new
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
