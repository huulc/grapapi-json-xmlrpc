module V1
  	class Mail < Grape::API
	  	format :json
	  	content_type :json, "application/json;charset=utf-8"
	  	version 'version', using: :param, parameter: '1.0'

	  	helpers V1::Helpers
	    resource :xmlrpc do
			desc "API redirect controller"
			before do
		  		#   Hash.from_xml(params)["methodCall"]["params"]["param"]["value"]["struct"]["member"].inject({}) do |result, elem| 
				#   result[elem["name"]] = elem["value"]["string"] 
				#   result 
				# end
				# params = result
				# doc = Nokogiri::XML(params) do |config|
				# 	  config.strict.nonet
				# 	end
				# Rails.logger.info doc
		    end
			params do
				optional :methodCall, type: Hash do
					optional :methodName, type: String, desc: "methodName"
					optional :params, type: Hash
				end
			end

			

			# logger = Rails.logger.new
			# logger.info "COUCOU"
			# logger.warn(request.env)
			
			post do
				#disable check methodName
				# a = params[:methodCall][:params]
		  		# controller = params[:methodCall][:methodName]
				# Rails.logger.info a

				# case controller
				# when "MOSE.MAIL.USER.authByMailAccount"
				# 	b = auth_by_mail_account(a)
				# when "MOSE.MAIL.USER.addMailAccount"
				# 	b = add_mail_account(a)
			 	# when "MOSE.MAIL.USER.getMailAccount"
			 	#  	b = get_mail_account(a)
		 		# else
				# 	b = {}
				# end

				# b

				{
				"StatusCode" => "200"
				}
				
			end
		end
  	end
end

