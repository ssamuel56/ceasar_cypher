require 'sinatra'
require_relative 'ceasar.rb'

get '/' do
  erb :home
end

post '/encrypt' do
  message = params[:message]
  erb :encrypt, :locals => {'message' => message}
end

post '/decrypt' do
  message = params[:message]
  erb :decrypt, :locals => {'message' => message}
end

not_found do
  erb :home
end
