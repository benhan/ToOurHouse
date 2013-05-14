class OsignupsController < ApplicationController
  # GET /osignups
  # GET /osignups.json
  def index
    @osignups = Osignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @osignups }
    end
  end

  # GET /osignups/1
  # GET /osignups/1.json
  def show
    @osignup = Osignup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @osignup }
    end
  end

  # GET /osignups/new
  # GET /osignups/new.json
  def new
    @osignup = Osignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @osignup }
    end
  end

  # GET /osignups/1/edit
  def edit
    @osignup = Osignup.find(params[:id])
  end

  # POST /osignups
  # POST /osignups.json
  def create
    @osignup = Osignup.new(params[:osignup])

    respond_to do |format|
      if @osignup.save
        format.html { redirect_to @osignup, notice: 'Osignup was successfully created.' }
        format.json { render json: @osignup, status: :created, location: @osignup }
      else
        format.html { render action: "new" }
        format.json { render json: @osignup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /osignups/1
  # PUT /osignups/1.json
  def update
    @osignup = Osignup.find(params[:id])

    respond_to do |format|
      if @osignup.update_attributes(params[:osignup])
        format.html { redirect_to @osignup, notice: 'Osignup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @osignup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osignups/1
  # DELETE /osignups/1.json
  def destroy
    @osignup = Osignup.find(params[:id])
    @osignup.destroy

    respond_to do |format|
      format.html { redirect_to osignups_url }
      format.json { head :no_content }
    end
  end
end
