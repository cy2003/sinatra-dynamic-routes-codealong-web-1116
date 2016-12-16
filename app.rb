require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye #{@user_name}"
  end

  get '/multiply/:num1/:num2' do
    num1 = params[:num1].to_i
    num2 = params[:num2].to_i
    #num1 and num2 does not need to be an instance variable
    #You only need an instance variable if you're going to show
    #it to the viewer
    @result = num1 * num2
    #because result is going to be shown to the viewer it needs
    #to be an instance variable
    "#{@result}"
  end


end
