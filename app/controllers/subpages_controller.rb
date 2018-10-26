class SubpagesController < InheritedResources::Base

  private

    def subpage_params
      params.require(:subpage).permit(:user_id, :page_id, :link, :title, :subtitle, :heading, :subheading, :weight, :body)
    end
end

