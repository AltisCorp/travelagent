#!/usr/bin/env ruby
# encoding: UTF-8
require 'rubygems'
require "bundler/setup"
require 'sinatra'
require 'suitcase'

Suitcase.configure do |config|
  config.hotel_api_key = "eab4khk6zzew5bfnpnnk92fk" # set the Hotel API key from developer.ean.com
  config.hotel_cid = "xANhbQuk" # set the CID from developer.ean.com
  config.cache = Hash.new # set the caching mechanism (see below)
end

Suitcase.configure do |config|
  config.hotwire_api_key = "g67emcqxr2g99emqek7x24h3" # set the Hotwire API key
end

get '/' do
  
 rentals = Suitcase::CarRental.find(destination: "LAX", start_date: "2/14/2013", end_date: "2/21/2013", pickup_time: "6:30", dropoff_time: "11:30") 
 puts rentals.inspect
end
