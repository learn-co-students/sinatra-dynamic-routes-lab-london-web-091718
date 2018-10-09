require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @new_str = ""
    @num = params[:number].to_i
    @str = params[:phrase]
    @num.times do
      @new_str = @new_str + @str
    end
    @new_str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    str
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    if op == "add"
      sum = num1 + num2

    elsif op == "subtract"
      sum = num1 - num2

    elsif op == "multiply"
      sum = num1 * num2

    elsif op == "divide"
      sum = num1 / num2

    else
      sum = "Unable to perform this operation"
    end
    sum.to_s
  end

end
