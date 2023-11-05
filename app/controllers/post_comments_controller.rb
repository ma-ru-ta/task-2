class PostCommentsController < ApplicationController
  
  def create
    post_image = Book.find(params[:book_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.book_id = book.id
    comment.save
    redirect_to books_path(book)
    # ↑コメント後、books/indexであってる？
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
  
end
