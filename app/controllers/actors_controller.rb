class ActorsController < ApplicationController
  def actor_by_id
    actor = Actor.fetch(id:1)
    render [json:] actor.as_json
  end
end
``