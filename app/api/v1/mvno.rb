module V1
  	class Mvno < Grape::API
	  	format :xml
	  	content_type :xml, 'text/xml;charset=utf-8'

  		default_format :xml
	  	helpers V1::Helpers
		require 'xmlrpc/client'
		require 'xmlsimple'
	    # resource :xmlrpc do
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
			# params do
			# 	optional :methodCall, type: Hash do
			# 		optional :methodName, type: String, desc: "methodName"
			# 		optional :params, type: Hash
			# 	end
			# end

			
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

				# Rails.logger.info params
				

				# return xml
				arr = [
						"StatusCode"=> 200,
						"Result" => [
							{
								"LineServiceCode" => "test1",
								"Label" => "label01",
								"SIM" => 1,
								"DeliveryMemo" => "test",
								"DeliveryZipCode" => "1234567",
								"DeliveryTelNo" => "123123",
								"DeliveryName" => "test",
								"DeliveryNameKana2" => "testkana",
								"DeliverySex" => "M",
								"DeliveryBirthDay" => "19800101",
								"MNPTelNo" => "123123",
								"MNPNumber" => "1232132",
								"Ondemand" => "1",
								"Expiration" => "20170131"
							},
							{
								"LineServiceCode" => "test2",
								"Label" => "label01",
								"SIM" => 1,
								"DeliveryMemo" => "test",
								"DeliveryZipCode" => "1234567",
								"DeliveryTelNo" => "123123",
								"DeliveryName" => "test",
								"DeliveryNameKana2" => "testkana",
								"DeliverySex" => "M",
								"DeliveryBirthDay" => "19800101",
								"MNPTelNo" => "123123",
								"MNPNumber" => "1232132",
								"Ondemand" => "1",
								"Expiration" => "20170131"
							}
						]
					]
				s = XMLRPC::Create.new
				a = s.methodResponse(true, arr)
				Hash.from_xml(a,true)
				Rails.logger.info a

			end
		# end
  	end
end

