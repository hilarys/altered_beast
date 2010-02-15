class SearchController < ApplicationController

  def index
    @posts = Topic.search(params[:q], params[:forum], :page => current_page) unless params[:q].blank?
    @forums = Forum.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.atom # index.atom.builder
      format.xml  { render :xml  => @posts }
    end
  end

end
