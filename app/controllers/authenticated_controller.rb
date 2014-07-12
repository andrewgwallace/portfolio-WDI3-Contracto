class AuthenticatedController < ApplicationController
  before_filter :authenticate_admin!

end
