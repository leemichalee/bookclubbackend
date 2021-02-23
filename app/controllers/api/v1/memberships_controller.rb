class Api::V1::MembershipsController < ApplicationController
    def index
        memberships = Membership.all
        render json:memberships
    end

    def create
        membership = Membership.create!(membership_params)
        render json:membership
    end

    private

    def membership_params
        params.permit(:club_id, :user_id)
    end
end