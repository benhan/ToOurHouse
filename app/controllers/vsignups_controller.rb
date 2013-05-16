class VsignupsController < ApplicationController
  # Load cancan authorization resources
  load_and_authorize_resource
  # GET /vsignups
  # GET /vsignups.json
  def index
    @vsignups = Vsignup.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @vsignups }
    end
  end

  # GET /vsignups/1
  # GET /vsignups/1.json
  def show
    @vsignup = Vsignup.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @vsignup }
    end
  end

  # GET /vsignups/new
  # GET /vsignups/new.json
  def new
    @vsignup = Vsignup.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @vsignup }
    end
  end

  # GET /vsignups/1/edit
  def edit
    @vsignup = Vsignup.find(params[:id])
  end

  # POST /vsignups
  # POST /vsignups.json
  def create
    @vsignup = Vsignup.new(params[:vsignup])

    respond_to do |format|
      if @vsignup.save
        format.html { redirect_to @vsignup, notice: 'Vsignup was successfully created.' }
        format.json { render json: @vsignup, status: :created, location: @vsignup }
      else
        format.html { render action: "new" }
        format.json { render json: @vsignup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /vsignups/1
  # PUT /vsignups/1.json
  def update
    @vsignup = Vsignup.find(params[:id])

    respond_to do |format|
      if @vsignup.update_attributes(params[:vsignup])
        format.html { redirect_to @vsignup, notice: 'Vsignup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @vsignup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vsignups/1
  # DELETE /vsignups/1.json
  def destroy
    @vsignup = Vsignup.find(params[:id])
    @vsignup.destroy

    respond_to do |format|
      format.html { redirect_to vsignups_url }
      format.json { head :no_content }
    end
  end
end
