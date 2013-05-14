class RailcarTypesController < ApplicationController
  # GET /railcar_types
  # GET /railcar_types.json
  def index
    @railcar_types = RailcarType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @railcar_types }
    end
  end

  # GET /railcar_types/1
  # GET /railcar_types/1.json
  def show
    @railcar_type = RailcarType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @railcar_type }
    end
  end

  # GET /railcar_types/new
  # GET /railcar_types/new.json
  def new
    @railcar_type = RailcarType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @railcar_type }
    end
  end

  # GET /railcar_types/1/edit
  def edit
    @railcar_type = RailcarType.find(params[:id])
  end

  # POST /railcar_types
  # POST /railcar_types.json
  def create
    @railcar_type = RailcarType.new(params[:railcar_type])

    respond_to do |format|
      if @railcar_type.save
        format.html { redirect_to @railcar_type, notice: 'Railcar type was successfully created.' }
        format.json { render json: @railcar_type, status: :created, location: @railcar_type }
      else
        format.html { render action: "new" }
        format.json { render json: @railcar_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /railcar_types/1
  # PUT /railcar_types/1.json
  def update
    @railcar_type = RailcarType.find(params[:id])

    respond_to do |format|
      if @railcar_type.update_attributes(params[:railcar_type])
        format.html { redirect_to @railcar_type, notice: 'Railcar type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @railcar_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railcar_types/1
  # DELETE /railcar_types/1.json
  def destroy
    @railcar_type = RailcarType.find(params[:id])
    @railcar_type.destroy

    respond_to do |format|
      format.html { redirect_to railcar_types_url }
      format.json { head :no_content }
    end
  end
end
