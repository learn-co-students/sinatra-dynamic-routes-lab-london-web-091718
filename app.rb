require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i
    square = @square ** 2
    square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    array = []
    @number.times do
      array << @phrase
    end
    array.join("%20")
    array
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
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
      if @operation == "add"
        result = @number1 + @number2
        result.to_s
      elsif
        @operation == "subtract"
        result = @number1 - @number2
        result.to_s
      elsif
        @operation == "multiply"
        result = @number1 * @number2
        result.to_s
      elsif
        @operation == "divide"
        result = (@number1 / @number2).to_s # can also parens an to_s
      end
    end

end
