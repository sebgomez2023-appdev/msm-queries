class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({:template => "actor_templates/index_actor.html.erb"})
  end

  def actor_details
    the_id = params.fetch("an_id")

    @the_actor = Actor.where({ :id => the_id }).at(0)
    @the_characters = Character.where({ :actor_id => the_id })
    render({:template => "actor_templates/show_actor.html.erb"})
  end 

end
