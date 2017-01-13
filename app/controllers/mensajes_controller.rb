class MensajesController < ApplicationController
	def index
		mensajes = Mensaje.all
		render json: mensajes
	end
end