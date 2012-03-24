class HomeController < ApplicationController
  def index
  end
  
  def hello
    redirect_to products_path
  end
end
