class TagsController < ApplicationController
  
  def show
    @tag = Tag.find(params[:id])
  end
  
  def index
    @tags = Tag.all
  end
  
  def destroy
  
    @tag = Tag.find(params[:id]).taggings.find_by(tag_id: params[:id])
    
    @tag.destroy!
    
    @tag_b = Tag.find(params[:id])
    @tag_b.destroy!
    
    flash.notice = "Tag '' destroyed!"
    
    redirect_to tags_path
  end
end
