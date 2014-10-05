class HomeController < ApplicationController
  def index
    @selected_id = 0
    @pictures = Picture.order('created_at DESC')
    .paginate(page: params[:page], per_page: 12)
  end

  def show
    #@pictures = Picture.find_all_by_category(params[:id])
    @selected_id = 2
    @pictures = Picture.where(category: params[:id]).order('created_at DESC')
    .paginate(page: params[:page], per_page: 12)
    @current_category = Category.find(params[:id])
  end

  def product
    @selected_id = 2
    @pictures = Picture.order('created_at DESC')
    .paginate(page: params[:page], per_page: 12)
    render 'index'
  end

  def description
    @selected_id = 1
  end

  def customer_resource
    @selected_id = 3
  end

  def team
    @selected_id = 4
  end

  def contact_us
    @selected_id = 5
  end

end
