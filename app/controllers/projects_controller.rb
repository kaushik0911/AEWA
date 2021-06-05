class ProjectsController < ApplicationController
  def index
    @ongoing = Project.pending
  end
end
