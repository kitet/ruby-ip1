require 'capybara/rspec'
require './app'
Capybara.app=Sinatra::Application
set(:show_exceptions, false)

describe('home path and functionality',{:type=>:feature}) do
	it 'processes the user input and return the count as results' do
		visit '/'
		fill_in 'word', :with=>"hi"
		fill_in 'string', :with=>"hi hiking"
		click_button 'Count'
		expect(page.find('#results').text).to eq 'hi occurs 1 times'
	end
end