require 'open-uri'

class ProductsController < ApplicationController

  def index
    the_url = ""
    if params['page'] == ""
      the_url = "http://lcboapi.com/products"
    else
      the_url = "http://lcboapi.com/products?page=" + "#{params['page']}"
    end

    products_json = open(the_url).read
    
    @products = JSON.parse(products_json)
  end

  def show
    id = params[:id]
    products_json = open('http://lcboapi.com/products').read
    products = JSON.parse(products_json)
    products['result'].each do |product|
      @product=product if product['id'].to_i==id.to_i 
    end
  end

  # private
  # def product_params
  #   params.require(:product).permit(:name, :price_in_cents, :primary_category)
  # end

end
