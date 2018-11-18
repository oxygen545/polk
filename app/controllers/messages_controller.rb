class MessagesController < InheritedResources::Base
	def show
		redirect_to "/"
	end

	def delete
		if user_signed_in? 
			self.destroy
		else 
			redirect_to "/users/sign_in"
		end 
	end

 	def create
		@message = Message.new(params[:message].permit(:first_name, :last_name, :email, :subject, :body))
		respond_to do |format|
			if @message.save
				# Tell the MessageMailer to send a message sent email after save
				MessageMailer.with(message: @message).message_sent_email.deliver_later
				MessageMailer.with(message: @message).message_received_email.deliver_later
				format.html { redirect_to(@message, notice: 'Message was successfully delivered.') }
				format.json { render json: @message, status: :created, location: @message }
			else
				format.html { render action: 'new' }
				format.json { render json: @message.errors, status: :unprocessable_entity }
			end
		end
	end

  private

    def message_params
      params.require(:message).permit(:first_name, :last_name, :email, :subject, :body)
    end
end

