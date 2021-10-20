class ArticlesController < ActionController::Base
   def index
       @articles=Article.all
   end
   def show
       @article=Article.find(params[:id])
   end
   def new
       @article=Article.new
   end
   def create
    @article=Article.new(params.require(:article).permit(:title,:description))
    if @article.save
        redirect_to @article
    else
        render 'new'
    end
   end
   def edit
   
   end

end