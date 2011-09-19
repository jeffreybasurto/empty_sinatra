require 'sinatra'
require 'sass'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class App < Sinatra::Base
  set :public, File.dirname(__FILE__) + '/public'
  set :static, true

# uncomment for the most simple app wide authentication possible.
#  use Rack::Auth::Basic do |username, password|
#    [username, password] == ['admin', 'admin']
#  end
   
  get '/' do
    erb :index
  end

  get '/style.css' do
    scss :stylesheet
  end
end


App.run!({:port => ENV['PORT'] || 3000})
