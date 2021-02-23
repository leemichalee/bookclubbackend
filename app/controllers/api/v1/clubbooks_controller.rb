class Api::V1::ClubbooksController < ApplicationController
    def index
        clubbooks = Clubbook.all
        render json:clubbooks
    end

    def create
        clubbook = Clubbook.create!(clubbook_params)
        render json:clubbook
    end

    private

    def clubbook_params
        params.permit(:club_id, :book_id)
    end
end