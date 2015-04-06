class WelcomeController < ApplicationController
  def index

    @events = Event.order(:start_time)

  	# @events = Event.where('start_time > ?', Time.zone.now).order(:start_time)
  	# @events = Event.where(Event.arel_table[:start_time].gt(Time.zone.now)).order(:start_time)
    
  end
end
