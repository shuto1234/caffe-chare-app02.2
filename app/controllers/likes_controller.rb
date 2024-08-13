class LikesController < ApplicationController
  def create
    caffe = Caffe.find(params[:caffe_id])
    like = current_user.likes.new(caffe_id: caffe.id)
    like.save
    redirect_to caffe_path(caffe)
  end
  
  def destroy
    caffe = Caffe.find(params[:caffe_id])
    like = current_user.likes.find_by(caffe_id: caffe.id)
    like.destroy
    redirect_to caffe_path(caffe)
  end
end
