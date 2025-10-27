class GoalsController < ApplicationController
  def index
    @goals = Goal.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
