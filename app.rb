require 'sinatra'
require 'sinatra/reloader'
require './lib/counter'
also_reload('lib/**/*.rb')


get('/') do
	@myword=""
	erb :index
end

post('/') do
	selectvalue=params['select']
	@myarray=[0,1]
	@myword = params['word']
	@mystring=params['string']
	mycounter=CountOccurence.new
	@results=mycounter.countWord(@myword, @mystring, selectvalue)
	erb :index
end