class Text

	def send_text(body)
			account_sid = 'AC81dba0a9bd8bb6fc2be33419f028a3ab'
			auth_token = '44d8a2f7650bd77ac7caaae2ca56c8d1'
			@client = Twilio::REST::Client.new account_sid, auth_token
			 
			message = @client.account.sms.messages.create(:body => body,
			    :to => "+447760725881",     
			    :from => "+441353210104")
	end

end