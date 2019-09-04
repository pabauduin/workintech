class GamesController < ApplicationController
  def index
    games = Game.all.order(:difficulty)
    @games_sorted = []
    games_finished = games.select { |game| cookies[game.id] == game.name }
    games_todo = games.select { |game| cookies[game.id].nil? }
    games_todo.each { |game| @games_sorted << game }
    games_finished.each { |game| @games_sorted << game }
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
    # if params[:variable1N].present?
    #   if params[:variable3N].present? && (params[:variable3N] != "Sci-fi")
    #     flash[:notice] = "le code est erroné"
    #   elsif params[:variable2N].present? && (params[:variable2N] != "UE")
    #     flash[:notice] = "le code est erroné"
    #     render :show
    #   elsif params[:variable1N] != "10"
    #     flash[:notice] = "le code est erroné"
    #     render :show
    #   else redirect_to result_path
    #   end
    # else
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
  # end
end
