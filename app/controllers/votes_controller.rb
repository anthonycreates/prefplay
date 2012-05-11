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
    
    respond_with @vote
  end

  # GET /votes/1/edit
  def edit
    @vote = Vote.find(params[:id])
    respond_with @vote
  end

  # POST /votes
  # POST /votes.json
  def create
    @vote = Vote.new(params[:vote])

    if @vote.save
      flash[:notice] = 'Vote was successfully created.'
    end
    respond_with @vote
  end

  # PUT /votes/1
  # PUT /votes/1.json
  def update
    @vote = Vote.find(params[:id])

    if @vote.save
      flash[:notice] = 'Vote was successfully updated.'
    end
    respond_with @vote
  end

end
