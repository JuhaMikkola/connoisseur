require 'open-uri'

class ProductsController < ApplicationController

  def index
    products_json = open('http://lcboapi.com/products').read
    @products = JSON.parse(products_json)
  end

  def view
  end

end
