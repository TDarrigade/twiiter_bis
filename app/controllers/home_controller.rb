class HomeController < ApplicationController


  def index
    text = params.permit(:tweet)
    tweet = SendTweet.new(text['tweet']).perform
    flash[:success] = "Tweet was successfully sent!"


  end


end
