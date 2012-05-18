class VotesController < ApplicationController
  respond_to :html, :json

  # GET /votes
  # GET /votes.json
  def index
    @votes = Vote.all
    respond_with @votes
  end

  # GET /votes/1
  # GET /votes/1.json
  def show
    @vote = Vote.find(params[:id])
    respond_with @vote
  end

  # GET /votes/new
  # GET /votes/new.json
  def new
    @question = Question.find(params[:question_id])
    @choice = Choice.find(params[:choice_id])
    @vote = Vote.new(:question => @question, :choice => @choice)
    @vote.build_guess
    respond_with @vote
  end

  # POST /votes
  # POST /votes.json
  def create
    @question = Question.find(params[:question_id])
    @vote = @question.votes.build(params[:vote])

    if @vote.save
      flash[:notice] = 'Voted successfully!'
    end
    redirect_to root_path
  end

end
