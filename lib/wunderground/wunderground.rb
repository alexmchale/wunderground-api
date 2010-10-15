require 'xmlsimple'
require 'andand'
require 'net/http'
require 'cgi'

class Wunderground
  def initialize(location)
    @location = location
    params = to_params(:query => @location)

    data = Net::HTTP.get(URI.parse "http://api.wunderground.com/auto/wui/geo/ForecastXML/index.xml?#{params}")
    @xml = XmlSimple.xml_in(data, { 'ForceArray' => false })
  end

  def to_params(params)
    params.map {|key, value| "#{CGI.escape key.to_s}=#{CGI.escape value.to_s}"}.join "&"
  end

  def today
    @xml.andand['txt_forecast'].andand['forecastday'].sort {|a, b| a['period'].to_i <=> b['period'].to_i}
  end

  def forecast
    @xml.andand['simpleforecast'].andand['forecastday']
  end

  def simple_forecast(days = 3)
    forecast.andand[0, days.to_i].andand.each do |day|
      printf "%s: %s, High %s Low %s\n", day['date']['weekday'], day['conditions'], day['high']['fahrenheit'], day['low']['fahrenheit']
    end
  end
end
