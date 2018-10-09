require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do
    @name=params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number=params[:number]
    "#{@number.to_i*@number.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase].to_s
    @number = params[:number].to_i
    erb :numberphrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1=params[:word1].to_s
    @word2=params[:word2].to_s
    @word3=params[:word3].to_s
    @word4=params[:word4].to_s
    @word5=params[:word5].to_s
    erb :wordonefive
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
      @t=@number1 + @number2
    elsif @operation == "subtract"
      @t=@number1-@number2
    elsif @operation == "multiply"
     @t=@number1*@number2
    elsif @operation == "divide"
      @t=@number1 / @number2
    end
"#{@t}"
  end

end
