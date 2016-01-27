class PersonsController < ApplicationController

  def show
    @person = Person.find(params[:id])
    @events = Event.all.select(&:official?)
  end
end
