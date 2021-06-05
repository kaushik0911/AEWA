class ProjectsController < ApplicationController
  def index
    @ongoing = Project.ongoing
    @completed = Project.completed

    gon.ongoing   = @ongoing
    gon.completed = @completed
  end
end
