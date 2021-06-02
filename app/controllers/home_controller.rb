class HomeController < ApplicationController
  def index
    @sliders  = Carousel.show
    @services = Service.show
    @team_members = TeamMember.show
  end

  def contact_us
    contact_us = ContactU.create(contact_us_params)
    flash[:notice] = "You message have successfully sent."
    redirect_to :root
  end

  private

  def contact_us_params
    params.permit(:name, :email, :subject, :comment)
  end
end
