require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    erb :phrase_number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :wordss
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]

    when 'multiply'
      params[:number1].to_i * params[:number2].to_i
    when 'divide'
      params[:number1].to_i / params[:number2].to_i
    when 'add'
      params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      params[:number1].to_i - params[:number2].to_i
    end
  end

end
