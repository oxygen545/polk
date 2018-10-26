class HomesController < InheritedResources::Base

  private

    def home_params
      params.require(:home).permit(:link, :title, :subtitle, :heading, :subheading, :weight, :body)
    end
end

