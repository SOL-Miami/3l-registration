class AttendeesController < ApplicationController
  expose(:attendee, attributes: :attendee_params)

  def create
    respond_to do |format|
      if attendee.save
        format.html { redirect_to thanks_path, notice: 'Thanks You for your submission' }
        format.json { render json: attendee, status: :created, location: attendee }
      else
        format.html { render action: "new" }
        format.json { render json: attendee.errors, status: :unprocessable_entity }
      end
    end
  end



  private

    def attendee_params
      params.require(:attendee).permit(:first_name, :last_name, :email, :phone)
    end
end
