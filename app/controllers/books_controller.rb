class BooksController < ApplicationController

  def top
  end

  # 全体表示ページ
  def index
    @books = Book.all
    @book = Book.new
  end


  # 詳細ページ
  def show
  end

  def edit
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to show_path(:id)
  end


  private
  def book_params
    params.require(:book).permit(:title,:body)
  end

end
