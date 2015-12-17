class CatagoryController < ApplicationController

  def index
    @catagories = Catagory.all
    #binding.pry
  end

end