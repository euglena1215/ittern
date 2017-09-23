class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @search = Review.ransack(params[:q])
    @reviews = @search.result.includes(:company, :user, :tags)
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    @comments = @review.comments.includes(:user)
    @benefit = @review.benefit
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

  # GET /reviews/1/edit
  def edit
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.user = current_user

    if @review.save
      Pdf2ImagesJob.perform_later(@review)
      redirect_to @review, notice: "Review was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    if @review.update(review_params)
      Pdf2ImagesJob.perform_later(@review)
      redirect_to @review, notice: "Review was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy!
    redirect_to reviews_url, notice: "Review was successfully destroyed."
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :url, :company_id, :rate, :pdf, :tag_list)
    end
end
