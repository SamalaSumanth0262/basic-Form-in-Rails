class DetailsController < ApplicationController
  def new
      @details = Detail.new
  end
  def show
    @details =Detail.all
  end
  def create
      @details = Detail.new(form_params)
      if @details.save
        redirect_to details_show_path
      end
  end
  private
  def form_params
    params.require(:detail).permit(:firstname, :lastname)
  end
end
