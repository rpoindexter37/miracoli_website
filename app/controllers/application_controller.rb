class ApplicationController < ActionController::Base
  #before_action :authenticate_tenant!
  before_action :authenticate_with_http_token
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
