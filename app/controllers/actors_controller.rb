class ActorsController < ApplicationController
  def show
    actor_id = params["id"]
    actor = Actor.find_by(id: actor_id)
    render json: actor.as_json
  end

  def index
    actors = Actor.all
    render json: actors.as_json
  end
end