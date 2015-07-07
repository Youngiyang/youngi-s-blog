class WelcomeController < ApplicationController
  def index
  	@articles = Article.order('id DESC').paginate(:page => params[:page],:per_page => 3)  
  end
  def about
  	
  end
end
