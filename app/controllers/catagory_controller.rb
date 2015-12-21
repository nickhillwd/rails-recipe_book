class CatagoryController < ApplicationController

  def index
    catagories = Catagory.all
    @catagories_names_array = catagories.map do |catagory|
      catagory.catagory_name
    end

    @catagory_id_array = catagories.map do
      |catagory|
      catagory.id
    end
  end

end