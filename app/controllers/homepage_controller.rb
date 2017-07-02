class HomepageController < ApplicationController
  def index
  end
  
  def result
    @date_begin = Date.new(params[:year_begin].to_i,params[:month_begin].to_i,1)
    @date_end = Date.new(params[:year_end].to_i,params[:month_end].to_i,1)
    @media_temp = Hash.new
    @desvio_temp = Hash.new
    @media_dewp = Hash.new
    @desvio_dewp = Hash.new
    @media_w = Hash.new
    @desvio_w = Hash.new
    
    months = Month.all.months_between(@date_begin,@date_end)
    months.each do |m|
      @media_temp[m.mes_ano] = m.media_temp
      @desvio_temp[m.mes_ano] = m.desvio_temp
      @media_dewp[m.mes_ano] = m.media_dewp
      @desvio_dewp[m.mes_ano] = m.desvio_dewp
      @media_w[m.mes_ano] = m.media_w
      @desvio_w[m.mes_ano] = m.desvio_w
    end
  end
end
