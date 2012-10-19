class InvitesController < ApplicationController
  def create
    @invite = Invite.new(params[:invite])

    respond_to do |format|
      if @invite.save
        format.js
        format.html { redirect_to root_path }
      else
        format.js { render :action => @invite.sensei == true ? 'sensei_error' : 'noob_error'  }     
      end
    end    
  end
end
