class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new(goal_params)

    if @goal.save
      redirect_to goals_path
    else
      render :new
    end
  end

  def edit
  end

  def goal_params
    params.require(:goal).permit(:title, :description, :deadline)
  end
end
