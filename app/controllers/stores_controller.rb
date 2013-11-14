require 'open-uri'

class StoresController < ApplicationController

  def index
    stores_json = open('http://lcboapi.com/stores?per_page=100').read
    @stores = JSON.parse(stores_json)
  end

  def show
    id = params[:id]
    stores_json = open('http://lcboapi.com/stores?per_page=100').read
    stores = JSON.parse(stores_json)
    stores['result'].each do |store|
      @store=store if store['id'].to_i==id.to_i 
    end
  end

end

