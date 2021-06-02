class HomeController < ApplicationController
  def index
    @sliders  = Carousel.show
    @services = Service.show
    @team_members = TeamMember.show
  end

  def contact_us

  end

  private

  def contact_us_params
    re
  end
end
