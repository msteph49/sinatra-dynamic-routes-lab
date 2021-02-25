require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}" 

  end
  get '/square/:number' do
    @number = params[:number].to_i
    @squared_number = @number * @number
    "#{@squared_number}"
  end
  get '/say/:number/:phrase' do
    result = " "
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      result += @phrase
    end
    result
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    answer = ' '

    case params[:operation]
    when 'add'
      answer = (@num1 + @num2).to_s
    when 'subtract'
      answer = (@num1 - @num2).to_s
    when 'multiply'
      answer = (@num1 * @num2).to_s
    when 'divide'
      answer = (@num1/@num2).to_s
    end
  end
end