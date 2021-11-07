class BooksController < ApplicationController

  def top
  end

  # 全体表示ページ
  def index
  end

  # 詳細ページ
  def show
  end

  def edit
  end

  def create
    @newBook = Books.new
  end
  
  

end
