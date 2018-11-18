class MessageMailer < ApplicationMailer

	default from: ENV['MESSAGE_ADMIN_EMAIL']
 
 	def message_sent_email
    	@message = params[:message]
    	@url  = new_user_registration_url
    	mail(to: @message.email, subject: 'Thanks for your interest ')
  	end

 	def message_received_email
    	@message = params[:message]
    	@url  = new_user_registration_url
    	mail(to: ENV['MESSAGE_ADMIN_EMAIL'], subject: 'Message received about your website')
  	end

end
