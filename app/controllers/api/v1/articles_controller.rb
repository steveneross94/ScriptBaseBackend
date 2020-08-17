require 'open-uri'
require 'net/http'
require 'json'

class Api::V1::ArticlesController < ApplicationController
    def index
        article_api_key = ENV['article_api_key']
        articles = fetch_url("http://newsapi.org/v2/everything?q=health+insurance&language=en&sortBy=popularity&apiKey=#{article_api_key}")
        render json: articles
    end 


    def fetch_url(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        resp_body = response.body
        json_resp = JSON.parse(resp_body)
    end
    
end