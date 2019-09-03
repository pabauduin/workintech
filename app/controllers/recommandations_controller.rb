class RecommandationsController < ApplicationController
  def index
    @recommandations = Recommandation.all
  end

  def new
    @recommandation = Recommandation.new
  end

  def create
    @recommandation = Recommandation.create!(:name, :age, :genre, :origin, :image)
  end
end
