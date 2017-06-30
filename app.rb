require 'sinatra'
require 'sinatra/reloader'
require './lib/counter'
also_reload('lib/**/*.rb')


get('/') do
	erb :index
end

get('/results') do
	@myword = params['word']
	@mystring=params['string']
	mycounter=CountOccurence.new
	@results=mycounter.countWord(@myword,@mystring);
	erb :results
end