class DistrictsController < ApplicationController
  def index
    @districts = District.all 
  end

  def show
    @district = District.find(params[:id])
  end

  def new
    @district = District.new
  end

  def create
    @district = District.new(params[:district])
    respond_to do |format|
      if @district.save
        format.html {redirect_to action: :index, notice: "District was succesfully added."}
      else
        flash.now.alert = "Please correct the errors below."
        format.html {render :new}
      end
    end
  end

  def edit
    @district = District.find(params[:id])
  end

  def update
    @district = District.find(params[:id])
    respond_to do |format|
      if @district.update_attributes(params[:district])
        format.html {redirect_to action: :index, notice: "District info was successfully updated."}
      else
        flash.now.alert = "Please correct the errors below."
        format.html {render :edit}
      end
    end
  end

  def destroy
    @district = District.find(params[:id])
    respond_to do |format|
      if @district.destroy
        format.html {redirect_to action: :index, notice: "District record was successfully removed."}
      else
        flash.now.alert = "Unable to remove District."
        format.html {redirect_to :back}
      end
    end
  end
end
