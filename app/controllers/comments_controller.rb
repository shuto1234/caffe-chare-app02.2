class CommentsController < ApplicationController
  def create
    caffe = Caffe.find(params[:caffe_id])
    comment = current_user.comments.new(comment_params)
    comment.caffe_id = caffe.id
    comment.save
    redirect_to caffe_path(caffe)
  end
  
  def destroy
    Comment.find_by(id: params[:id]).destroy
    redirect_to caffe_path(params[:caffe_id])
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:opinion)
  end
end
