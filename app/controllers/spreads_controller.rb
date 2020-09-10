class SpreadsController < ApplicationController
  def show
    @spread = Spread.find(params[:id])
  end

  def new
  end

  def create
    @spread = Spread.new(spread_params)

    @spread.save
    redirect_to @spread
  end

  private
  def spread_params
    params.require(:spread).permit(:notes)
  end
end
