class Api::V1::MeetingsController < ApplicationController
    
    def index
        meetings = Meeting.all
        render json:meetings
    end

    def create
        meeting = Meeting.create!(meeting_params)
        render json:meeting
    end

    def update
        meeting = Meeting.find(params[:id])
        meeting.update(zoom: params[:zoom])
        render json:meeting
    end

    def destroy
        meeting = Meeting.find(params[:id])
        meeting.destroy!
        render json: {}
    end

    private
    
    def meeting_params
        params.permit(:club_id, :zoom, :description)
    end
end