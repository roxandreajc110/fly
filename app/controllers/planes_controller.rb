class PlanesController < ApplicationController

  def index
    @planes = Plane.all
  end

  def new
    @plane = Plane.new
  end

  def edit
    find_plane
    if @plane.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def create
    @plane = Plane.new(plane_params)
      if @plane.save
          flash[:success] = "Plane created. Ok"
          redirect_to planes_path
      else
          render 'new'
      end
  end


  def destroy
    find_plane
    if @plane.destroy
      flash[:success] = "Plane Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try it later"
    end
    redirect_to planes_path
  end

  def update
    find_plane
    if @plane.update(plane_params)
      flash[:success] = "Plane updated. Ok"
      redirect_to planes_path
    else
      flash[:error] = "Houston we are in troubles, try it again."
      render 'edit'
    end
  end


  def show
    find_plane
    if @plane.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  private

  def find_plane
    @plane = Plane.find_by(id: params[:id])
  end

  #strong parameters
  def plane_params
    params.require(:plane).permit(:name, :country_name, :time_zone)
  end

end
