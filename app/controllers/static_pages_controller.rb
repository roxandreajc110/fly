class StaticPagesController < ApplicationController
  def welcome
    @cities = City.all
  end
end
