class ApplicationController < ActionController::Base
	before_action :authenticate

	def authenticate
	  authenticate_or_request_with_http_basic('Administration') do |email, password|
	    email == 'diego@scissorboy.com' && password == '123456'
	  end
	end
end
