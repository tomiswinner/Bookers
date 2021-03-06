class BooksController < ApplicationController

  # def top
  # end

  # 全体表示ページ
  def index
    @books = Book.all
    @book = Book.new
  end

  # 詳細ページ
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def create
    @books = Book.all
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def destroy
    @books = Book.all
    @book = Book.find(params[:id])
    if @book.destroy
      flash[:notice] ="Book was successfully deleted"
      redirect_to books_path
    else
      flash[:notice] = "Failed to delete the book"
      render :index
    end
  end

  private
  def book_params
    params.require(:book).permit(:title,:body,:id)
  end

end