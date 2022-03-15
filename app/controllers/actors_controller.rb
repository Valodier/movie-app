class ActorsController < ApplicationController
  
  def index
    render json: Actor.all.as_json
  end

  def create

    
  end

  def show
    actor_id = params[:id]
    show_id = Actor.find_by[id: actor_id]
    render json: show_id.as_json
  end

  def update
    actor_id = params [:id]
    actor = Actor.find_by[id: actor_id]
    
    actor.first_name = params["first_name"] || actor.first_name
    actor.last_name = params["last_name"] || actor.last_name
    actor.known_for = params ["known_for"] || actor.known_for
  end

  def destroy
    
  end
  

end