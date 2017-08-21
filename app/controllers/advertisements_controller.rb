class AdvertisementsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @advertisements=Advertisement.all
  end

  def show
    @advertisement=Advertisement.find(params[:id])
  end

  def new
    @advertisement=Advertisement.new
  end

  def create
    @advertisement=Advertisement.new
    @advertisement.title=params[:advertisement][:title]
    @advertisement.body=params[:advertisement][:body]
    @advertisement.price=params[:advertisement][:price]
    @advertisement.save
    redirect_to @advertisement
  end
end
