require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
  @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @user_answer = params[:word]
    url=("https://wagon-dictionary.herokuapp.com/#{word}")
    @user_answer = open(url).read
    @user_answer = JSON.parse
  end
end


