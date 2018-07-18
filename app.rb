require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

<<<<<<< HEAD
  post '/piglatinize' do
    piglatin = PigLatinizer.new
    @latinized_text = piglatin.piglatinize(params[:user_phrase])
=======
  post '/piglatinizer' do
    @latinized_text = PigLatinizer.new(params[:user_text])
>>>>>>> cfa86879e75715cd5d2156d5b0642b8626de73dd
    
    erb :results
  end
end