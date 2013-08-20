class StaticPagesController < ApplicationController
  def home
  	@user_selection = User.all.sample(4)
  end

  def help
  end

  def about
  end

  def contact
  end
end
