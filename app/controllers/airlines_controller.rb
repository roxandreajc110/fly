class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
  end

  def new
    @airline = Airline.new
  end

  def edit
    find_airline
    if @airline.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def create
    @airline = Airline.new(airline_params)
    if @airline.save
      redirect_to airlines_path
    else
      flash[:success] = "Airline created. Ok"
      render 'new'
    end
  end

  def destroy
    find_airline
    if @airline.destroy
      flash[:success] = "Airline Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try it later"
    end
    redirect_to airlines_path
  end

  def update
    find_airline
    if @airline.update(airline_params)
      flash[:success] = "Airline updated. Ok"
      redirect_to airlines_path
    else
      flash[:error] = "Houston we are in troubles, try it again."
      render 'edit'
    end
  end


  def show
    find_airline
    if @airline.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end





  private

  def find_airline
    @airline = Airline.find_by(id: params[:id])
  end

  #strong parameters
  def airline_params
    params.require(:airline).permit(:name)
  end


end
