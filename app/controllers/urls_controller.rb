class UrlsController < ApplicationController
	def index
		
	end

	def new

	end


	def create
		@url = Url.new(url_params)

		if @url.save 
			redirect_to '/urls'
		else
			# render :new
			redirect_to '/urls'
		end
		
	end


	private
		def url_params 
			params.require(:url).permit(:short_url, :long_url)
		end
end
