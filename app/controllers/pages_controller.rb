class PagesController < InheritedResources::Base

  private

    def page_params
      params.require(:page).permit(:user_id, :link, :title, :subtitle, :heading, :subheading, :weight, :body)
    end
end

