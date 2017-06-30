require 'sinatra'
require 'sinatra/reloader'
require './lib/counter'
also_reload('lib/**/*.rb')

get('/') do
	@wordn=params.fetch('word')
	@stringn=params.fetch('string')
	#@results= CountOccurence.countWord(word, string)
	erb(:index)
end