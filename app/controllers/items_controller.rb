class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find_by(:id => params[:id])
  end

  def new
  end

  def create
    @item = Item.new
    @item.name = params[:name]
    @item.category = params[:category]
    @item.colour = params[:colour]
    @item.brand = params[:brand]
    @item.price = params[:price]
    @item.flattering_for = params[:flattering_for]
    @item.extra_support = params[:extra_support]
    @item.image_url = params[:image_url]
    @item.general_size = params[:general_size]
    @item.us_size = params[:us_size]
    @item.uk_size = params[:uk_size]
    @item.eu_size = params[:eu_size]
    @item.waist_size = params[:waist_size]
    @item.hip_size = params[:hip_size]
    @item.bust_size = params[:bust_size]
    
    if @item.save
      redirect_to items_url
    else
      render 'new'
    end
  end

  def edit
    @item = Item.find_by(:id => params[:id])
  end

  def update
    @item = Item.find_by(:id => params[:id])
    @item.name = params[:name]
    @item.category = params[:category]
    @item.colour = params[:colour]
    @item.brand = params[:brand]
    @item.price = params[:price]
    @item.flattering_for = params[:flattering_for]
    @item.extra_support = params[:extra_support]
    @item.image_url = params[:image_url]
    @item.general_size = params[:general_size]
    @item.us_size = params[:us_size]
    @item.uk_size = params[:uk_size]
    @item.eu_size = params[:eu_size]
    @item.waist_size = params[:waist_size]
    @item.hip_size = params[:hip_size]
    @item.bust_size = params[:bust_size]
    
    if @item.save
      redirect_to items_url
    else
      render 'new'
    end
  end

  def destroy
    @item = Item.find_by(:id => params[:id])
    @item.destroy
    redirect_to items_url
  end
end
