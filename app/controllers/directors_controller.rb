class DirectorsController < ApplicationController
  
  def index
    render({:template =>"director_templates/index.html.erb"})

    @directors = Director.all
  end

end
