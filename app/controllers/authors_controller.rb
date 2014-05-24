class AuthorsController < ApplicationController
  before_action :current_author, only: [:show, :add_book]
  before_action :filter_non_signed, only: [:index, :new, :show]

  def index
    if params[:search]
      @authors = Author.find_by(name: params[:search])
    else
      @authors = Author.paginate(page: params[:page])
    end
  end

  def show
  end

  def add_book(book)
    @author.relationships.create(book: book)
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params.require(:author).permit(:name))

    if @author.save
      flash.now[:success] = "Author successfully created!"
    else
      flash.now[:error] = "Author creation failed!"
    end

    render 'new'
  end

  private

    def current_author
      @author = Author.find(params[:id])
    end
end
