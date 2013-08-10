class LinksController < ApplicationController

  after_filter :set_access_control_headers

  def set_access_control_headers 
    headers['Access-Control-Allow-Origin'] = '*' 
    headers['Access-Control-Request-Method'] = '*' 
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      render :json => {url: link_url(@link)}
    else
      render :json => @link.errors, status: 422
    end
  end

  def show
    @link = Link.find(params[:id])
  end
end
