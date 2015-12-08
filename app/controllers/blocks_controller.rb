class BlocksController < ApplicationController

  def index
    @blocks = Block.all
  end

  def show
    @block = Block.find(params[:id])
  end

  def new
    @block = Block.new
  end

  def create
    @block = Block.new(block_params)
    if @block.save
      redirect_to blocks_path
    else
      render 'new'
    end
  end
 
  private def block_params
    params[:block].permit(:name, :memo)
  end

end
