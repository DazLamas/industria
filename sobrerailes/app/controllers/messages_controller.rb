class MessagesController < ApplicationController
	def index

		@message = Message.all

	end

	def create

		# binding.pry

		@message = Message.create(message: params[:message], user_name: params[:user_name])


		if	@message.save	

			# flash.now[:notice] = "Entrada guardada!!"
			redirect_to	action: 'index', controller: 'messages'
		else	
			# flash.now[:error] = "Fata Error. Vuelve a introducir los datos"
			render	'index'	
		end	
		
	end


end