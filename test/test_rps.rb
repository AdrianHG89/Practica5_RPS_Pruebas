require 'test/unit'
require 'rack/test'
require './lib/rps.rb'

class Test_RPS < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Rack::Builder.new do
			run RockPaperScissors::RPS.new
		end.to_app
	end

	def test_index
		get "/"
		assert last_response.ok?
	end

	def test_body
		get "/"
		assert last_response.body.include?("Maquina"), "El body debe contener la Vs."
	end

end