class SpreadsController < ApplicationController
  def new

  end

  def create
    render plain: params[:spread].inspect
  end
end
