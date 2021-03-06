  class HouseController < ApplicationController

  def index
    @col=Colony.find(params[:id])
    @hou=@col.houses.all
  end

  def new
    @col=Colony.find(params[:id])
    @hou=@col.houses.new
  end

  def create
    @col=Colony.find(params[:id])
    @hou=@col.houses.create(params[:house])

    if @hou.save
      redirect_to :action=>'index', :id=>@col.id
    else
      flash[:notice]='please fill correctly, h_no integer  '
      render 'new'
    end
  end


  def edit
    @hou=House.find(params[:id])
    @col=@hou.colony
  end

  def update
    @hou=House.find(params[:id])
    @col=@hou.colony
    if @hou.update_attributes(params[:house])
      redirect_to :action=>'index', :id=>@col.id
    else
      flash[:notice]='please fill in H-NO integer'
      render 'edit'
    end
  end

  def show
    @hou=House.find(params[:id])
  end

  def  destroy
    @hou=House.find(params[:id])
    @col=@hou.colony
    if @hou.delete
      redirect_to :action=>'index', :id=>@col.id
    end
  end

end
