class WelcomeController < ApplicationController
  def unregistered
  end

  def home
    @fruits = current_user.fruits.all
  end
end
