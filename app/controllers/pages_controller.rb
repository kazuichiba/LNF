class PagesController < ApplicationController
  helper_method :resource, :resource_name, :devise_mapping

  def index

  end

  def dashboard
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
