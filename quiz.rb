#
# def menu
# 	puts "What would you like to do?"
# 	puts "1. Build a Quiz"
# 	puts "2. Take a Quiz"
#
# 	choice = gets.chomp.to_i
#
# 	case choice
# 		when 1
# 			system "clear"
# 			build_quiz
# 		when 2
# 			system "clear"
# 			choose_quiz
# 		else
# 			system "clear"
# 			puts "Try Again."
# 			menu
# 	end
# end

# class Quiz
#
# attr_accessor :title, :problems, :score
#   def initialize (title, problems, score)
#     @title = title
#     @problems = problems
#     @score = score
#   end
# end

class Problems

  attr_accessor :question, :answer
  def initialize (question, answer)
    @question = question
    @answer = answer
  end
end


# def menu
# 	puts "What would you like to do?"
# 	puts "1. Build a Quiz"
# 	puts "2. Take a Quiz"
#
# 	choice = gets.chomp.to_i
#
# 	case choice
# 		when 1
# 			system "clear"
# 			build_quiz
# 		when 2
# 			system "clear"
# 			choose_quiz
# 		else
# 			system "clear"
# 			puts "Try Again."
# 			menu
# 	end
# end

# @quizzes []
#
# puts "What's the name of your quiz?"
# name = gets.chomp
# quiz1 = Quiz.new(name, problems, 0)
# @quizzes.push(quiz1)



  questions_and_answers = []

  puts "Let's make a quiz!"
  puts "What do you want to call your quiz? Don't forget to include the word 'quiz' at the end!"
  title = gets.chomp.capitalize
  puts "How many questions do you want to ask?"
  num = gets.chomp.to_i
  num.times do
  puts "Enter a trivia question"
  question = gets.chomp.downcase
  puts "Give the answer to your question"
  answer = gets.chomp.downcase


  q_a = Problems.new(question, answer)
  questions_and_answers.push(q_a)
end
system("clear")
  sleep(1)
    puts "Let's play #{title.upcase}!"

    score = 0

    questions_and_answers.each do |problem|
      sleep(1)
      puts "- #{problem.question} -"
      user_answer = gets.chomp.downcase
    if user_answer == problem.answer
      puts "That's correct! Good job!"
      score += 1
    else
      puts "Sorry, the correct answer is #{problem.answer.upcase}."
    end
  end

sleep(1)
puts "All Done!"
if score == num
puts "You got #{score} out of #{num} correct! That's awesome!"
elsif score > 1
  puts "You got #{score} out of #{num} correct! Not bad!"
else
  puts "You got #{score} correct! You need to study!"
end

# puts "#{questions_and_answers[0].answer}"
