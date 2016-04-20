class testimonysController < ApplicationController
  expose(:testimony, attributes: :testimony_params)

  def create
    respond_to do |format|
      if testimony.save
        format.html { redirect_to thanks_path, notice: 'Thanks You for your submission' }
        format.json { render json: testimony, status: :created, location: testimony }
      else
        format.html { render action: "new" }
        format.json { render json: testimony.errors, status: :unprocessable_entity }
      end
    end
  end



  private

    def testimony_params
      params.require(:testimony).permit(:first_name, :last_name, :testimony, :comments)
    end
end
