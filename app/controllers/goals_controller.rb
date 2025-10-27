class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
  end

  def new
    @goal = Goal.new
  end

  def edit
  end
end
