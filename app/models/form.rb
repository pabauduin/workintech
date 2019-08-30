class Form < ApplicationRecord
  has_many :answers

  def questions
    self.answers.map {|answer| answer.question}
  end
end
