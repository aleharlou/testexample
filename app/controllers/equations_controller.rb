class EquationsController < ApplicationController
  # GET /equations
  # GET /equations.json
  def index
    @equations = Equation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equations }
    end
  end

  # GET /equations/1
  # GET /equations/1.json
  def show
    @equation = Equation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equation }
    end
  end

  # GET /equations/new
  # GET /equations/new.json
  def new
    @equation = Equation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equation }
    end
  end

  # GET /equations/1/edit
  def edit
    @equation = Equation.find(params[:id])
  end

  # POST /equations
  # POST /equations.json
  def create
    @equation = Equation.new(params[:equation])

    respond_to do |format|
      if @equation.save
        format.html { redirect_to @equation, notice: 'Equation was successfully created.' }
        format.json { render json: @equation, status: :created, location: @equation }
      else
        format.html { render action: "new" }
        format.json { render json: @equation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equations/1
  # PUT /equations/1.json
  def update
    @equation = Equation.find(params[:id])

    respond_to do |format|
      if @equation.update_attributes(params[:equation])
        format.html { redirect_to @equation, notice: 'Equation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @equation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equations/1
  # DELETE /equations/1.json
  def destroy
    @equation = Equation.find(params[:id])
    @equation.destroy

    respond_to do |format|
      format.html { redirect_to equations_url }
      format.json { head :ok }
    end
  end
end
