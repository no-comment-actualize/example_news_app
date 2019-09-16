class Api::ArticlesController < ApplicationController
  def index
    @articles = HTTP.headers("Authorization" => "Bearer #{ENV['news_api_key']}").get("https://newsapi.org/v2/everything?q=#{params[:search]}").parse["articles"]
    render 'index.json.jb'
  end
end
