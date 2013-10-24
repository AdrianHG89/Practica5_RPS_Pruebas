require 'spec_helper'

describe Rsack::Server do
	def server
		Rack::MockRequest.new(Rsack::Server.new)
    end

	context '/' do

		it "Debería devolver el codigo 200" do
	        response = server.get('/')
	        response.status.should == 200
		end
		
	end


end