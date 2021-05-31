class HomeController < ApplicationController
  def index
    @sliders  = Carousel.show
    @services = Service.show
  end
end
