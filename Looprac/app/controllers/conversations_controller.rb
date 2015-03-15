class ConversationsController < ApplicationController
	before_filter :authenticate_user!
	before_filter :get_mailbox

	def index
		@conversations = @mailbox.inbox.paginate(page: params[:page], per_page: 10)
	end

	def show
		@conversation = @mailbox.conversations.find(params[:id])
	end	

	def reply
		@conversation = @mailbox.conversations.find(params[:id])
		@body = params[:body]
		current_user.reply_to_conversation(@conversation , @body)
		redirect_to conversation_path(@conversation)	
	end	

	private

	def get_mailbox
		@mailbox ||= current_user.mailbox
	end	
end
