class BooksController < ApplicationController
  before_action :current_book, only: [:show, :add_author]
  before_action :filter_non_signed, only: [:index, :new, :show]

  def index
    if params[:search]
      @books = Book.find_by(name: params[:search])
    else
      @books = Book.paginate(page: params[:page])
    end
  end

  def show 
  end

  def add_author(author)
    @book.relationships.create(author: author)
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params.require(:book).permit(:name))

    if @book.save
      flash.now[:success] = "Book successfully created!"
    else
      flash.now[:error] = "Book creation failed!"
    end

    render 'new'
  end

  private

    def current_book
      @book = Book.find(params[:id])
    end
end
