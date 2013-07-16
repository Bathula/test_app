class UsersController < ApplicationController
  include Wicked::Wizard

  steps :name_step, :kind_step, :city_step
  def new
  @user = User.new
  end
  def create

  end
end
