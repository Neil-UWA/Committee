class ProblemsController < ApplicationController
  def create
    if current_user.problems.create(problem_params)
      redirect_to problems_path
    else
      render :index
    end
  end

  def index
    @problems = Problem.all
  end

  def show
    @problem = Problem.find(params[:id])
  end

private
  def problem_params
    params[:problem].permit(:title, :details)
  end
end
