class RecommandationsController < ApplicationController
   def new
    @recommandations = Recommandation.new
  end

  def create
    @recommandation = Recommandation.create!(:name, :age, :genre, :origin, :image)
  end
end
