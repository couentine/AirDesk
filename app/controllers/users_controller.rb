class UsersController < ApplicationController

  def index
    @owners= Owner.all

     respond_to do |format|
       format.html # index.html.erb
       format.xml  { render :xml => @users }
     end
  end

    def show
      @owners= Owner.all
      @owner_rentals = current_owner.rentals
      puts @owner_rentals
    end



  def profiles
    @owner = Owner.find(params[:id])
      @owner_photos = Owner.find(params[:id]).photos
    @owner_rents = Owner.find(params[:id]).rentals
    puts @owner_rents

   respond_to do |format|
     format.html # profiles.html.erb
     format.xml  { render :xml => @owner}
      end
    end
end
