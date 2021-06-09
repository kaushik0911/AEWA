class ProjectsController < ApplicationController
  def index
    @ongoing = Project.ongoing.order(start_date: :desc)
    @completed = Project.completed.order(start_date: :desc)

    gon.ongoing   = @ongoing || []
    gon.completed = @completed || []
  end
end
