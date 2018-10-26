class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:user_id, :subpage_id, :link, :title, :subtitle, :heading, :subheading, :weight, :body)
    end
end

