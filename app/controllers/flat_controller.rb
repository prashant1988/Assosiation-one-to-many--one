class FlatController < ApplicationController
    def index
      @hou=House.find(params[:id])
      @flt=@hou.flats.all
    end

    def new
      @hou=House.find(params[:id])
      @flt=@hou.flats.new
    end

    def create
      @hou=House.find(params[:id])
      @flt=@hou.flats.create(params[:flat])

      if @flt.save
        redirect_to :action=>'index', :id=>@hou.id
      else
        render 'new'
      end
    end

    def edit
      @flt=Flat.find(params[:id])
      @hou=@flt.house
    end

    def update
      @flt=Flat.find(params[:id])
      @hou=@flt.house
      if @flt.update_attributes(params[:flat])
        redirect_to :action=>'index', :id=>@hou.id
      else
        render 'edit'
      end
    end

    def show
      @flt=Flat.find(params[:id])
    end

    def  destroy
      @flt=Flat.find(params[:id])
      @hou=@flt.house
      if @flt.delete
        redirect_to :action=>'index', :id=>@hou.id
      end
    end

  end


