class ResponsibilitiesController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  # GET /responsibilities
  # GET /responsibilities.json
  def index
    @responsibilities = Responsibility.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @responsibilities }
    end
  end

  # GET /responsibilities/1
  # GET /responsibilities/1.json
  def show
    @responsibility = Responsibility.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @responsibility }
    end
  end

  # GET /responsibilities/new
  # GET /responsibilities/new.json
  def new
    @responsibility = Responsibility.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @responsibility }
    end
  end

  # GET /responsibilities/1/edit
  def edit
    @responsibility = Responsibility.find(params[:id])
  end

  # POST /responsibilities
  # POST /responsibilities.json
  def create
    @responsibility = Responsibility.new(params[:responsibility])

    respond_to do |format|
      if @responsibility.save
        format.html { redirect_to @responsibility, notice: 'Responsibility was successfully created.' }
        format.json { render json: @responsibility, status: :created, location: @responsibility }
      else
        format.html { render action: "new" }
        format.json { render json: @responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /responsibilities/1
  # PUT /responsibilities/1.json
  def update
    @responsibility = Responsibility.find(params[:id])

    respond_to do |format|
      if @responsibility.update_attributes(params[:responsibility])
        format.html { redirect_to @responsibility, notice: 'Responsibility was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @responsibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responsibilities/1
  # DELETE /responsibilities/1.json
  def destroy
    @responsibility = Responsibility.find(params[:id])
    @responsibility.destroy

    respond_to do |format|
      format.html { redirect_to responsibilities_url }
      format.json { head :no_content }
    end
  end
end
