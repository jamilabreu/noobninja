class UsersController < ApplicationController
  def index
    @invite = Invite.new
  end
end
