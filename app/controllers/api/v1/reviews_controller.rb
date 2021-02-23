class Api::V1::ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json:reviews
    end

    def create
        review = Review.create!(review_params)
        render json:review
    end

    def show
        review = Review.find(params[:id])
        render json:review
    end

    def update
        review = Review.find(params[:id])
        review.update(review: params[:review])
        render json:review
    end

    def destroy
        review = Review.find(params[:id])
        review.destroy!
        render json: {}
    end

    private
    
    def review_params
        params.permit(:book_id, :user_id, :review)
    end
end