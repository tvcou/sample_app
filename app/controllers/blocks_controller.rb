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
    @block.save
    redirect_to blocks_path
  end
 
  private
    def block_params
      params[:block].permit(:name, :memo)
    end

end
