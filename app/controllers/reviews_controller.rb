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

  # create_table "reviews", force: :cascade do |t|
  #   t.string   "title"
  #   t.string   "body"
  #   t.integer  "guest_id"
  #   t.integer  "listing_id"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end

        title: params["title"],
      runtime: params["runtime"],
      rating: params["rating"],
      actors: params["actors"],
      release_year: params["release_year"],
      img_url: params["img_url"]
      })