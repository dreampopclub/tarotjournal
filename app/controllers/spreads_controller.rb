class SpreadsController < ApplicationController
  before_action :authenticate_user!

  def show
    @spread = Spread.find(params[:id])
  end

  def new
    @deck = Deck.new
  end

  def create
    @user = current_user
    @spread = @user.spreads.new(spread_params)
    @spread.save
    redirect_to @spread
  end

  private
  def spread_params
    params.require(:spread).permit(:notes, :date, :user_id)
  end
end
