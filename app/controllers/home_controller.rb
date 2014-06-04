class HomeController < ApplicationController
protect_from_forgery
  require 'httparty'
require 'json'
  def index
  end
  def create
  details = {}
  @details = Array.new
    response = HTTParty.get("https://api.foursquare.com/v2/venues/search?categoryId=4d4b7105d754a06374d81259&ll=#{params[:Lat]},#{params[:Long]}&oauth_token=Z12SBWWCPM1GW3DCIPAUEPYQXYD0QMR2IEWNOXGABBHB5QIJ&v=20140127")
    result = JSON.parse(response.body)
    data_arr = result['response']['venues']
    data_arr.each do |data|
    detailss = details.merge(:name => data['name'],:id => data['id'],:address => data['location']['address'], :location =>  data['location'], :city => data['location']['city'],:country => data['location']['country'],:postalCode => data['location']['postalCode'],:state => data['location']['state'],:lat => data['location']['lat'],:lng => data['location']['lng'],:crossStreet => data['location']['crossStreet']  )
  @details << detailss
end
   respond_to do |format|
      format.json {render :json=>@details}
    end
  end
end
