class ArticlesController < ApplicationController
  include ActiveModel::MassAssignmentSecurity

  load_and_authorize_resource

  attr_protected :title, :author, :date, :body

  #GET /articles
  def index
    @articles = Article.paginate(:page => params[:page], :per_page => 4)
  end

  #GET /articles/1
  def show
  end

  #GET /articles/new 
  def new
    @article = Article.new
  end

  #GET /articles/1/edit
  def edit
  end

  #POST /articles
  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  #PATCH/PUT /articles/1
  def update
    respond_to do |format|
      if @article.update(params[:article])
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  #DESTROY /articles/1
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
    end
  end

end