class WelcomeController < ApplicationController
  require "rest-client"
  require "json"
  require "ostruct"
  def index
  end
  def api
    url = "https://api.agify.io/?name=yassen"
    response = RestClient.get(url)
    # render json: response

    json_string = response
    # '{"firstname":"jeff",

    # "lastname":"durand",
    # "address": { "street":"22 charlotte rd",
    # "zipcode":"01013", "residents": 3 }}'
    @json_object = JSON.parse(json_string, object_class: OpenStruct)
    puts @json_object.name
  end
  def api2
    url = ""
  end
end
