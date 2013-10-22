require 'test/unit'
require 'rack/test'
require './lib/RockPaperScissors'

class Test_RPS < Test::Unit::TestCase
	include Rack::Test::Methods

	def app
		Rack::Builder.new do
			run RockPaperScissors::RPS.new
		end
	end

	def test_index
		get "/"
		assert last_response.ok?
	end

	def test_body
		get "/"
		assert_equal last_response.body, 'Vs.', "El body debe contener la Vs."
	end

end