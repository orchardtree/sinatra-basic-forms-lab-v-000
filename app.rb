require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/puppy' do
    @puppy = Puppy.new
    erb :display_puppy
  end
end
=begin
<body>
  <p>Puppy Name: <%= @puppy.name %></p>
  <p>Puppy Breed: <%= @puppy.breed %></p>
  <p>Puppy Age: <%= @puppy.age %> months</p>
</body>
=end