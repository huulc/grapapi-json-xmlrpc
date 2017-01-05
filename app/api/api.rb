class API < Grape::API
	format :xml 
	# content_type :xml, "application/xml;charset=utf-8"
	content_type :xml, "text/xml;charset=utf-8"
	prefix '/'

	before do
	  	header['Access-Control-Allow-Origin'] = '*'
	  	header['Access-Control-Request-Method'] = '*'
	end

	# rescue_from ActiveRecord::RecordNotFound do |e|
	#     Rack::Response.new({
	#       error_code: 404,
	#       error_message: e.message
	#       }.to_json, 404).finish
 #  	end
	 
 #  	rescue_from :all do |e|
	#     Rack::Response.new({
	#       error_code: 500,
	#       error_message: e.message
	#       }.to_json, 500).finish
 #  	end

	rescue_from ActiveRecord::RecordNotFound do |e|
	    Rack::Response.new({
	      StatusCode: 404,
	      ErrorCode: e.message
	      }.to_json, 404).finish
  	end
	 
  	rescue_from :all do |e|
	    Rack::Response.new({
	      StatusCode: 500,
	      ErrorCode: e.message
	      }.to_json, 500).finish
  	end

  	rescue_from RuntimeError, rescue_subclasses: false do |e|
	    error!({
	      status: e.status,
	      message: e.message,
	      errors: e.errors
	    }, e.status)
	end



	
	# mount User::Raise
	# mount User::Protected
	# mount User::Post
	# mount User::Store
	mount V1::Mail => 'extapi/'
	mount V1::Mvno => 'xml-rpc/kpdapi.cgi/'
end
