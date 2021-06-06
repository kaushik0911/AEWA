class ProjectsController < ApplicationController
  def index
    @ongoing = Project.ongoing
    @completed = Project.completed

    gon.ongoing   = @ongoing.order(id: :desc) || []
    gon.completed = @completed.order(id: :desc) || []
  end
end
