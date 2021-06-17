class QuizzesController < ApplicationController
  $count = 0
  $score = 0
  def begin
    $count += 1
    @que = Quiz.find($count)
    @question = @que.question
    @answers = @que.answers
  end
  
  def submit
    @s_key = params[:option]
    c_hash = eval(@correct_answers)
    c_hash.each do |k, v|
      if k[0...8] == @s_key[0...8] and v == true
        $score += 1
      end
    end
    $count += 1
    
    @que = Quiz.find($count + 1)
    @question = @que.question
    @answers = @que.answers
    

    if (count == 10)
      QuizzesController::results
    end
  end
  
  def quizz
    
    @que = Quiz.find($count + 1)
    @question = @que.question
    @answers = @que.answers
    @correct_answers = @que.correct_answers
  end
  
  
  def self.results
    
  end
  
end
