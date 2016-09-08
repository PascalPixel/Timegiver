class MeetingsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @meetings = current_team.meeting_list.order(:date)
  end

  # GET /admin/1
  def show
  end

  # GET /admin/new
  def new
    @meeting = Meeting.new(team_ids: [current_team.id])
  end

  # GET /admin/1/edit
  def edit
  end

  # POST /meetings
  def create
    @meeting = Meeting.new(meeting_params)

    if @meeting.save
      redirect_to meeting_path(@meeting), notice: 'Meeting was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/1
  def update
    if @meeting.update(meeting_params)
      redirect_to meeting_path(@meeting), notice: 'Meeting was successfully edited.'
    else
      render :edit
    end
  end

  # DELETE /admin/1
  def destroy
    @meeting.destroy
    redirect_to meetings_path, notice: 'Meeting was successfully cancelled.'
  end

  private
    def get_meeting
      @meeting = Meeting.friendly.find(params[:id])
    end

    def meeting_params
      params.require(:meeting).permit(:title, :description, :name, :date, :time, team_ids: [])
    end
end
