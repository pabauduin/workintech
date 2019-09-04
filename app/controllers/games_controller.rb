class GamesController < ApplicationController
  def index
    @games = Game.all.order(:difficulty)
    @front_games = Game.where(game_type: "Frontend")
    @back_games = Game.where(game_type: "Backend")
  end

  def result
    @game = Game.find(params[:id])
  end

  def show
    @game = Game.find(params[:id])
  end

  def netflix
    if params[:variable1N].present?
      @recommandations = Recommandation.where(age: params[:variable1N]).where(origine: params[:variable2N]).where(genre: params[:variable3N])
    else
      params[:variable1N] = "60"
      params[:variable2N] = "US"
      params[:variable3N] = "Police"
      @recommandations = Recommandation.where(age: params[:variable1N]).where(origine: params[:variable2N]).where(genre: params[:variable3N])
    end
  end

  def update
    @game = Game.find(params[:id])
    if params[:variable3].present? && (params[:variable3] != @game.solution_variable3)
      flash[:notice] = "le code est erroné"
      render :show
    elsif params[:variable2].present? && (params[:variable2] != @game.solution_variable2)
      flash[:notice] = "le code est erroné"
      render :show
    elsif params[:variable1] != @game.solution_variable1
      flash[:notice] = "le code est erroné"
      render :show
    else redirect_to result_path
    end
  end
end

