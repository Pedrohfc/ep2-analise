class HomepageController < ApplicationController
  def index
  end
  
  def result
    @ini = params[:date_begin]
    @fim = params[:date_end]
  end
end
