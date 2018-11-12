class StylesController < InheritedResources::Base

	def show
		@style = Style.find(params[:id])
	end

  private

    def style_params
      params.require(:style).permit(:stylename, :description, :primary_font, :secondary_font, :alt_font, :primary_color, :secondary_color, :alt_color)
    end
end

