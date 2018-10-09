require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name = @name.reverse
    "{#@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = (@number * @number).to_s
    "{#@squared}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do 
      final_string += "{#@phrase}\n"
    end

    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    final = " #{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    
    final
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      final = number1 + number2 
    elsif operation == "subtract"
      final = number1 - number2
    elsif operation == "multiply"
      final = number1 * number2
    elsif operation == "divide"
      final = number1 / number2
    end
    final.to_s
end
end