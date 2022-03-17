class ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
    render :index
  end

  def create
    @actor = Actor.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      known_for: params["known_for"],
      gender:params["gender"],
      age:params["age"]
    )
    if @actor.save
      render :show
    else
      render json: {errors: @actor.errors.full_messages},
      status: 422
    end
  end

  def show
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)
    render template: "actors/show"
  end

  def update
    actor_id = params[:id]
    @actor = Actor.find_by(id: actor_id)
    
    @actor.first_name = params["first_name"] || @actor.first_name
    @actor.last_name = params["last_name"] || @actor.last_name
    @actor.known_for = params["known_for"] || @actor.known_for
    @actor.gender = params["gender"] || @actor.gender
    @actor.age = params["age"] || @actor.age

    if @actor.save
      render :show
    else
      render json: {erros: @actor.errors.full_messages},
      status:422
    end
  end

  def destroy
    actor_id = params[:id]
    actor = Actor.find_by(id: actor_id)
    actor.destroy

    render json: {message: "MY GOD WHAT HAVE YOU DONE?!"}
  end
  

end