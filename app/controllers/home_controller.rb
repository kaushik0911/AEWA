class HomeController < ApplicationController
  def index
    @sliders  = Carousel.show
    @services = Service.show
    @team_members = TeamMember.show
  end

  def contact_us
    contact_us = ContactU.new(contact_us_params)
    if verify_recaptcha(model: contact_us)
      flash[:notice] = "You message have successfully sent."
      redirect_to :root
    else
      render 'index'
    end
  end

  private

  def contact_us_params
    params.permit(:name, :email, :subject, :comment)
  end
end
