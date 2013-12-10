class RoutesController < ApplicationController
  def index
    @routes = Route.all 
  end

  def show
    @route = Route.find(params[:id])
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(params[:route])
    respond_to do |format|
      if @route.save
        format.html {redirect_to action: :index, notice: "Route was succesfully added."}
      else
        flash.now.alert = "Please correct the errors below."
        format.html {render :new}
      end
    end
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.find(params[:id])
    respond_to do |format|
      if @route.update_attributes(params[:route])
        format.html {redirect_to action: :index, notice: "Route info was successfully updated."}
      else
        flash.now.alert = "Please correct the errors below."
        format.html {render :edit}
      end
    end
  end

  def destroy
    @route = Route.find(params[:id])
    respond_to do |format|
      if @route.destroy
        format.html {redirect_to action: :index, notice: "Route record was successfully removed."}
      else
        flash.now.alert = "Unable to remove Route."
        format.html {redirect_to :back}
      end
    end
  end
end
