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
    @variable1N = params[:variable1N]
    @variable2N = params[:variable2N]
    @variable3N = params[:variable3N]
    respond_to do |format|
      format.html
      format.js
    end
    @recommandations = Recommandation.where(age: params[:variable1N]).where(origine: params[:variable2N]).where(genre: params[:variable3N])

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

