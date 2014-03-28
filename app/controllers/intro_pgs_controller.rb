class IntroPgsController < ApplicationController
	def index
		@intro = IntroPg.all
	end

	def new
		@intro = IntroPg.new
		@intro.build_cover_top
		@intro.build_cover_bottom
		@intro.build_about
	end

	def create
		@intro = IntroPg.new(intro_pg_params)
		if @intro.save!
			flash[:notice] = "Landing page saved!!"
		  	redirect_to intro_pgs_path
		else
			render 'new'
		end
	end

	def edit
		@intro = IntroPg.find(params[:id])
	end

	def update
		@intro = IntroPg.find(params[:id])

		if @intro.update_attributes(intro_pg_params)
		    redirect_to intro_pgs_path
		else
		    render 'edit'
		end
	end

	def delete
	end
	private
	    # Using a private method to encapsulate the permissible parameters is just a good pattern
	    # since you'll be able to reuse the same permit list between create and update. Also, you
	    # can specialize this method with per-user checking of permissible attributes.
	    def intro_pg_params
	      params.require(:intro_pg).permit!
	    end
end
