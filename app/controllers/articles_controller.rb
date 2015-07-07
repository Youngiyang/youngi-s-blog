class ArticlesController < ApplicationController
	
	  http_basic_authenticate_with name: "youngi", password: "q1234567", except: [:index, :show]
    skip_before_filter :verify_authenticity_token, only: [:destroy]

	def new
		@article = Article.new
  	end
 	
 	def create
  		@article = Article.new(article_params)
  		if  @article.save
  			redirect_to @article
  		else
  			render 'new'
  		end
  		
	end
	
	def show
 		@article = Article.find(params[:id])
	end
	def index
		# @articles =Article.all
    @articles = Article.order('id DESC').paginate(:page => params[:page],:per_page => 10)  
	end
	def edit
  		@article = Article.find(params[:id])
	end
	def update
  		@article = Article.find(params[:id])
 
  		if @article.update(article_params)
    		redirect_to @article
  		else
    		render 'edit'
  		end
	end
	def destroy
  		@article = Article.find(params[:id])
  		@article.destroy
 
  		redirect_to articles_path
	end
 
private
  	def article_params
    	params.require(:article).permit(:title, :text)
 	end
  
end
	