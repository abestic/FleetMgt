class RailcarsController < ApplicationController
  # GET /railcars
  # GET /railcars.json
  def index
    @railcars = Railcar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @railcars }
    end
  end

  # GET /railcars/1
  # GET /railcars/1.json
  def show
    @railcar = Railcar.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @railcar }
    end
  end

  # GET /railcars/new
  # GET /railcars/new.json
  def new
    @railcar = Railcar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @railcar }
    end
  end

  # GET /railcars/1/edit
  def edit
    @railcar = Railcar.find(params[:id])
  end

  # POST /railcars
  # POST /railcars.json
  def create
    @railcar = Railcar.new(params[:railcar])

    respond_to do |format|
      if @railcar.save
        format.html { redirect_to @railcar, notice: 'Railcar was successfully created.' }
        format.json { render json: @railcar, status: :created, location: @railcar }
      else
        format.html { render action: "new" }
        format.json { render json: @railcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /railcars/1
  # PUT /railcars/1.json
  def update
    @railcar = Railcar.find(params[:id])

    respond_to do |format|
      if @railcar.update_attributes(params[:railcar])
        format.html { redirect_to @railcar, notice: 'Railcar was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @railcar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railcars/1
  # DELETE /railcars/1.json
  def destroy
    @railcar = Railcar.find(params[:id])
    @railcar.destroy

    respond_to do |format|
      format.html { redirect_to railcars_url }
      format.json { head :no_content }
    end
  end
end
