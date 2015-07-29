class WelcomeController < ApplicationController
  include WelcomeHelper

  def index
  end

  def signin
  end

  def auth
    sign_in
  end

  def signup
  end

end
