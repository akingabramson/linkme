class LinksController < ApplicationController

  after_filter :set_access_control_headers

  def set_access_control_headers 
    headers['Access-Control-Allow-Origin'] = '*' 
    headers['Access-Control-Request-Method'] = '*' 
  end
  def create
    render :json => {sampleurl: "http://www.google.com"}
  end
end
