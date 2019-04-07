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
  
end