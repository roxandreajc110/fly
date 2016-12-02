class AirportsController < ApplicationController
  def index
    @airports = Airport.all
  end

  def show
    @airport = Airport.find_by(id: params[:id])
    if @airport.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def new
    @airport = Airport.new
    @city = City.new
    @cities = City.all
  end

  def edit
    @airport = Airport.find_by(id: params[:id])
    @cities = City.all
    if @airport.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def create
    @airport = Airport.new(airport_params)
    if @airport.save
      flash[:success] = "Airport created. Ok"
      redirect_to airports_path
    else
      @cities = City.all
      render 'new'
    end
  end

  def update
    @airport = Airport.find_by(id: params[:id])
    if @airport.update(airport_params)
      flash[:success] = "Airport created. Ok"
      redirect_to airports_path
    else
      @cities = City.all
      render 'edit'
    end
  end

  def destroy
    @airport = Airport.find_by(id: params[:id])
    if @airport.destroy
      flash[:success] = "Airport destroyed. Ok"
    else
      flash[:error] = "Houston we are in troubles, please dont hack us."
    end
    redirect_to airports_path
  end

  private

  def airport_params
    params.require(:airport).permit(:name, :city_id)
  end























end
