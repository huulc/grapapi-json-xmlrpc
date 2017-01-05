module V1
	module Helpers

		
		def auth_by_mail_account(data)
			# Rails.logger.info data
			case data['param']['value']['struct']['member'][0]['value']['string']
			when "1"
				error_code = "E1001"
			  	message = "Api authentication failed."
			when "2"
				error_code = "E1002"
			  	message = "Access denied."
		  	when "3"
		  		error_code = "E1003"
			  	message = "Permission denied."
			when "4"
				error_code = "E1900"
			  	message = "System error."
		  	when "5"
		  		error_code = "E1901"
			  	message = "Some error happend."
			when "6"
				error_code = "E2001"
			  	message = "Invalid parameter."
		  	when 7
		  		error_code = "E2101"
			  	message = "Invalid EmailAddress."
			when 8
				error_code = "E2102"
			  	message = "Invalid EmailPasswd."
		  	when 9
		  		error_code = "E3001"
			  	message = "EmailAddress authentication failed."
			when 10
				error_code = "E3002"
			  	message = "No such EmailAddress."
			else
				error_code = "0"
			  	message = "Success."
			end

			{
				"StatusCode"=> env['api.endpoint'].status,
				"ErrorCode"=> error_code
			}
		end


		def add_mail_account(data)
			# Rails.logger.info data
			case data['param']['value']['struct']['member'][0]['value']['string']
			when "1"
				error_code = "E1001"
			  	message = "Api authentication failed."
			when 2
				error_code = "E1002"
			  	message = "Access denied."
		  	when 3
		  		error_code = "E1003"
			  	message = "Permission denied."
			when 4
				error_code = "E1900"
			  	message = "System error."
		  	when 5
		  		error_code = "E1901"
			  	message = "Some error happend."
			when 6
				error_code = "E2001"
			  	message = "Invalid parameter."
		  	when 7
		  		error_code = "E2101"
			  	message = "Invalid EmailAddress."
			when 8
				error_code = "E2102"
			  	message = "Invalid EmailPasswd."
		  	when 9
		  		error_code = "E3004"
			  	message = "EmailAddress or MailAlias already exists."
			when 10
				error_code = "E3101"
			  	message = "No Such Domain."
		  	when 11
				error_code = "E3901"
			  	message = "Regulated number excess."
			else
				error_code = "0"
			  	message = "Success."
			end
			
			{
				"StatusCode"=> env['api.endpoint'].status,
				"ErrorCode"=> error_code
			}
		end


		def get_mail_account(data)
			# Rails.logger.info data
			
			case data['param']['value']['struct']['member'][0]['value']['string']
			when "1"
				error_code = "E1001"
			  	message = "Api authentication failed."
			when 2
				error_code = "E1002"
			  	message = "Access denied."
		  	when 3
		  		error_code = "E1003"
			  	message = "Permission denied."
			when 4
				error_code = "E1900"
			  	message = "System error."
		  	when 5
		  		error_code = "E1901"
			  	message = "Some error happend."
			when 6
				error_code = "E2001"
			  	message = "Invalid parameter."
		  	when 7
		  		error_code = "E2101"
			  	message = "Invalid EmailAddress."
			when 8
				error_code = "E3002"
			  	message = "No such EmailAddress."
			else
				error_code = "0"
			  	message = "Success."
			end
			
			{
				"StatusCode"=> env['api.endpoint'].status,
				"ErrorCode"=> error_code,
				"Result" => {
					"EmailAccount" => {
						"AccountStatus"=> "200",
						"AntiVirusUse"=> "AntiVirusUse",
						"AntiSpamUse"=> "AntiSpamUse",
						"SpamMailIsolationUse"=> "SpamMailIsolationUse",
						"MailBoxUsage"=> "MailBoxUsage",
						"MailBoxQuota"=> "MailBoxQuota",
					}
				}
			}
		end


	end
end