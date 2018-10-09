require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
  @user_name = params[:name]
  @user_name.reverse
  end

  # get '/square/:number' do
  # @num = params[:number].to_i
  # new_num = Math.sqrt(@num)
  # new_num.to_s
  # end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  # get '/say/:number/:phrase' do
  #   num = params[:number].to_i
  #   phrase = params[:phrase]
  #   num.times do
  #     phrase.to_s
  #   end
  # end

  get '/say/:number/:phrase' do
    string = ''

    params[:number].to_i.times do
      string += params[:phrase]
    end
    string
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i
    
    # "#{num_1}" + "#{num_2}"
    # "#{num_1}" - "#{num_2}"
    # "#{num_1}" * "#{num_2}"
    # "#{num_1}" / "#{num_2}"
    if operation == "add".downcase
      str = num_1 + num_2
    elsif operation == "subtract".downcase
      str = num_1 - num_2
    elsif operation == "multiply".downcase
      str = num_1 * num_2
    elsif operation == "divide".downcase
      str = num_1 / num_2
  end
    str.to_s
end


end