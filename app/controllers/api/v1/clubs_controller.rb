class Api::V1::ClubsController < ApplicationController
    def index
        clubs = Club.all
        render json:clubs
    end

    def create
        club = Club.create!(club_params)
        render json:club
    end

    def show
        club = Club.find(params[:id])
        render json:club
    end

    def update
        club = Club.find(params[:id])
        club.update(description: params[:description])
        render json:club
    end

    private

    def club_params
        params.permit(:description, :genre, :owner_id, :title)
    end
end