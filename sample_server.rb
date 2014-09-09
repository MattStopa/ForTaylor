require 'rubygems'
require 'sinatra'
require 'mysql2'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :username => "root",
  :database => "app"
)

class User < ActiveRecord::Base
end

get '/add' do
  User.count.to_s
  u = User.new
  u.FirstName = params[:first]
  u.LastName = params[:last]
  u.save
end

get '/search' do
  last_name = params[:last]
  @records = nil

  if last_name.nil?
    @records = User.all.to_a
  else
    @records = User.where(:LastName => last_name).to_a
  end

  erb :index
end

get '/edit' do
  @record = User.find(params[:id])
  erb :edit
end

post '/update' do
  @record = User.find(params[:id])
  @record.FirstName = params[:first]
  @record.LastName = params[:last]
  @record.save
  redirect 'search'
end

get '/delete' do
  id = params[:id]
  User.find(id).destroy
  redirect 'search'
end
