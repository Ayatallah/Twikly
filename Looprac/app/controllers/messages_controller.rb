class MessagesController < ApplicationController
	before_filter :authenticate_user!

	def create
		@message = params[:message][:body]
		@subject = params[:message][:subject]
		recipients = User.where(id: params['recipients'])
		conversation = current_user.send_message(recipients,@message,@subject).conversation
		if conversation
			redirect_to conversation_path(conversation)
		end	
	end	
end
