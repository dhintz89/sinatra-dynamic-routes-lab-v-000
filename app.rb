require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse!
  end
  
  get "/square/:number" do
    @num = params[:number].to_i
    (@num*@num).to_s
  end
  
  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @num
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    words = [@word1, @word2, @word3, @word4, @word5]
    words.join(' ')
  end
  
end