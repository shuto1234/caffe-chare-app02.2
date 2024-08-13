class CaffesController < ApplicationController
  def new
    @caffe = Caffe.new
  end

  def create
    @caffe = Caffe.new(caffe_params)
    @caffe.user_id = current_user.id
    if @caffe.save
      flash[:notice] = "投稿に成功しました"
      redirect_to caffe_path(@caffe)
    else
      render :new
    end
  end

  def index
    @caffes = Caffe.all.reverse_order
  end

  def show
    @caffe = Caffe.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @caffe = Caffe.find(params[:id])
    if @caffe.user == current_user
      render :edit
    else
      redirect_to caffe_path
    end
  end

  def update
    @caffe = Caffe.find(params[:id])
    if @caffe.update(caffe_params)
      flash[:notice] = "Updateに成功しました"
      redirect_to caffe_path
    else
      render :edit
    end
  end

  def destroy
    @caffe = Caffe.find(params[:id])
    @caffe.destroy
    redirect_to user_path(@caffe.user)
  end

  private
  def caffe_params
    params.require(:caffe).permit(:shop_name, :caption, :image)
  end
end
