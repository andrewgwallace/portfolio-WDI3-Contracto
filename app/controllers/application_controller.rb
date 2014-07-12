class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  # Changing to use ":null_session" instead of ":exception" because of RSPec integration.
  protect_from_forgery with: :null_session
end
