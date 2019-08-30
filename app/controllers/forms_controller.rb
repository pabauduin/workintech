class FormsController < ApplicationController
  def new
    @forms = Form.new
  end

  def create
    # puts "je suis dans create"
    form = Form.create!(
      visitor_uuid: cookies[:visitor_uuid]
    )
    redirect_to new_form_answer_path(form)
  end

  def show
    @form = Form.find(params[:id])
    @answers = Answer.where(form_id: params[:id])
    @questions = Question.all
    @total_points = 0
    @answers.each do |answer|
      @total_points += answer.points.to_i
    end
    @boy_or_girl = @answers.select { |answer| answer.points == "2" || answer.points == "-2" }
  end
end
