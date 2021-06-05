class ProjectsController < ApplicationController
  def index
    @ongoing = Project.pending
    gon.rabl

    respond_to do |format|
      format.html
      format.json { render json: @ongoing }
    end
  end
end
