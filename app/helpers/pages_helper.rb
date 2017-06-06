module PagesHelper
  def page_params
    params.require(:page).permit(:title , :body , :slug)
  end
end
