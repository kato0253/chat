class CommentsController < ApplicationController
  before_action :set_blog, only: [:create, :edit, :update]
  # コメントを保存、投稿するためのアクションです。
  def create
    # Articleをパラメータの値から探し出し,Articleに紐づくcommentsとしてbuildします。
    @article = Article.find(params[:article_id])
    # @user = User.find(params[:user_id])
    #Articleモデル内の、:article_idパラムスを見つけて@article変数に入れる
    @comment = @article.comments.build(comment_params)
    @comment.user_id = current_user.id
    # クライアント要求に応じてフォーマットを変更
    respond_to do |format|
      if @comment.save
          flash.now[:notice] = 'コメントが投稿されました'
          format.js { render :index }
        else
          flash.now[:notice] = 'コメントの投稿に失敗しました'
          format.js { render :index }
        end
    end
  end
  def index
    @user = User.find(params[:user_id])

  end
  def edit
    @comment = @article.comments.find(params[:id])
    respond_to do |format|
      flash.now[:notice] = 'コメントの編集中'
      format.js { render :edit }
    end
  end
  def update
    @comment = @article.comments.find(params[:id])
    respond_to do |format|
      if @comment.update(comment_params)

        flash.now[:notice] = 'コメントが編集されました'
        format.js { render :index }
      else
        flash.now[:notice] = 'コメントの編集に失敗しました'
        format.js { render :edit_error }
      end
    end
  end
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end

  private
  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:article_id, :content)
  end
  def set_blog
    @article = Article.find(params[:article_id])
  end
end
