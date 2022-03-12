class ActorsController < ApplicationController
  def show
    actor = Actor.fetch(id:1)
    render [json:] actor.as_json
  end
end