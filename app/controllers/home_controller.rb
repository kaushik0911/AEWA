class HomeController < ApplicationController

  before_action :init

  def index; end

  def contact_us
    @contact_us.assign_attributes(contact_us_params)
    if verify_recaptcha(model: @contact_us) && @contact_us.save
      flash[:success] = t(".success")
    else
      flash[:danger] = t(".danger")
    end
    redirect_to :root
  end

  private

  def contact_us_params
    params.permit(:name, :email, :subject, :comment)
  end

  def init
    @sliders  = Carousel.show
    @services = Service.show
    @team_members = TeamMember.show
    @contact_us = ContactU.new
  end
end
