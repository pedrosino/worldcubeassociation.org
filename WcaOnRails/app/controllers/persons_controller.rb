class PersonsController < ApplicationController

  def show
    @person = Person.find(params[:id])
    @events = Event.all
  end
end
