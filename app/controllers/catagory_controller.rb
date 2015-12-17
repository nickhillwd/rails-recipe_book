class CatagoryController < ApplicationController

  def index
    @Catagories = Catagory.all
  end

end