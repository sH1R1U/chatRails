class ChatController < ApplicationController
	def index
		chats = Chat.all
		render json: chats
	end
end