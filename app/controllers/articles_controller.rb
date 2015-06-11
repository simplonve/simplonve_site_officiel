class ArticlesController < ApplicationController
	def index
   	@articles = Article.all
  end
	
  def new
    @article = Article.new
	end
	
  def create
		@article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: "L'article a été créé"
    else
      redirect_to new_article_path
    end
	end
	
  def show
		@article = Article.find(params[:id])
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
  	params.require(:article).permit(:day, :month, :year, :title, :subtitle, :content)
	end
end
