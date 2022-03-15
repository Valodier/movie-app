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
  

  def destroy
    
  end
  

end