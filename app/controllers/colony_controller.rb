class ColonyController < ApplicationController

  def index
    @col=Colony.all
  end

  def new
    @col=Colony.new
  end

  def create
    @col=Colony.new(params[:colony])

    if @col.save
      redirect_to :action=>'index'
    else
      render 'new'
    end
  end

  def edit
    @col=Colony.find(params[:id])
  end

  def update
    @col=Colony.find(params[:id])
    if @col.update_attributes(params[:colony])
      redirect_to :action=>'index'
    else
      render 'edit'
    end
  end

  def show
    @col=Colony.find(params[:id])
  end

  def  destroy
    @col=Colony.find(params[:id])
    if @col.delete
      redirect_to :action=>'index'
    end
  end

end
