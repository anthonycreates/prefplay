class HomeController < ApplicationController
  def index
    @question = Question.last
  end
end
