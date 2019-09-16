class Api::ArticlesController < ApplicationController
  def index
    @articles = HTTP.headers("Authorization" => "Bearer eda1b96b200f466b8bce1df354d74871").get("https://newsapi.org/v2/everything?q=#{params[:search]}").parse["articles"]
    render 'index.json.jb'
  end
end
