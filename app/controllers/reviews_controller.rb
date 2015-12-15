class ReviewsController < ApplicationController

  before_action :authorize, except: [:index, :show]

  def index
    @reviews = Review.where(listing_id: params[:id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create({
      title: params[:title],
      body: params[:body],
      guest_id: session[:user_id]
      })
    redirect_to reviews_path
  end

end


