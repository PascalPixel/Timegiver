class TeamsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @teams = current_user.team_list.order(:team_name)
  end

  # GET /admin/1
  def show
  end

  # GET /admin/new
  def new
    @team = Team.new(user_ids: [current_user.id])
  end

  # GET /admin/1/edit
  def edit
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

    if @team.save
      redirect_to team_path(@team), notice: 'Team was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/1
  def update
    if @team.update(team_params)
      redirect_to team_path(@team), notice: 'Team was successfully edited.'
    else
      render :edit
    end
  end

  # DELETE /admin/1
  def destroy
    @team.destroy
    redirect_to teams_path, notice: 'Team was successfully deleted.'
  end

  private
    def get_team
      @team = Team.friendly.find(params[:id])
    end

    def team_params
      params.require(:team).permit(:description, :team_name, :street_address_1, :street_address_2, :postal, :city, :country, :color, user_ids: [])
    end
end
