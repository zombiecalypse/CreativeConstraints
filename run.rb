require 'sinatra'
require 'haml'
require 'coffee-script'

set :public_folder, 'public'

get '/' do
  haml :index
end

get '/generator.js' do
  coffee :generator
end
