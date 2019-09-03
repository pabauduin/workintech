class AnswersController < ApplicationController
  def new
    @form     = Form.find(params[:form_id])
    @answer   = Answer.new
    @question_remain = Question.all - @form.questions
    @answers = Answer.all
    @boy_or_girl = @answers.select { |answer| answer.points == "2" || answer.points == "-2" }

    if @answers.count > 0
      @firstname_question = @answers.detect { |a| a.points.count("a-zA-Z").positive? }
      unless @firstname_question.nil?
        @firstname = @firstname_question.points.gsub(/\r\n|\r|\n/, "").capitalize

      end
    end

    if @question_remain.empty?
      redirect_to form_path(params[:form_id])
    else
      # @first_question = @question_remain.select { |question| question.description == "Choisis ton avatar" }
      @question = @question_remain.sort_by { |question| -question.answer_1.length }.first
    end
  end

  def create
    @form   = Form.find(params[:form_id])
    @answer = Answer.new(answer_params)
    @answer.form        = @form
    @answer.question_id = params[:answer][:question_id].to_i
    if @answer.save
      redirect_to new_form_answer_path(@form)
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:points, :question_id)
  end
end
