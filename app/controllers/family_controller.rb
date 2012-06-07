class FamilyController < ApplicationController

    def index
      @flt=Flat.find(params[:id])

      @fml=@flt.family
    end

    def new
      @flt=Flat.find(params[:id])

      @fml=@flt.build_family
    end

    def create
      @flt=Flat.find(params[:flat_id])
      @fml=@flt.build_family(params[:family])

      if @fml.save
        redirect_to :action=>'index', :id=>@flt.id
      else
        render 'new'
      end
    end

    def edit
      @flt=Flat.find(params[:id])
      @fml=@flt.family
    end

    def update
      @fml=Family.find(params[:id])
      @flt=@fml.flat
      if @fml.update_attributes(params[:family])
        redirect_to :action=>'index', :id=>@flt.id
      else
        render 'edit'
      end
    end

    def show

      @fml=Family.find(params[:id])
    end

    def  destroy
      @flt=Flat.find(params[:id])
      @fml=@flt.family
      if @fml.delete
        redirect_to :action=>'index', :id=>@flt.id
      end
    end





end
