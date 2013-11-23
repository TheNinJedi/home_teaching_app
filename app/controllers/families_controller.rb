class FamiliesController < ApplicationController
	def index
    @families = Family.all 
	end

  def show
    @family = Family.find(params[:id])
  end

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(params[:family])
    respond_to do |format|
      if @family.save
        format.html {redirect_to action: :index, notice: "Family was succesfully added."}
      else
        flash.now.alert = "Please correct the errors below."
        format.html {render :new}
      end
    end
  end

  def edit
    @family = Family.find(params[:id])
  end

  def update
    @family = Family.find(params[:id])
    respond_to do |format|
      if @family.update_attributes(params[:family])
        format.html {redirect_to action: :index, notice: "Family info was successfully updated."}
      else
        flash.now.alert = "Please correct the errors below."
        format.html {render :edit}
      end
    end
  end

  def destroy
    @family = Family.find(params[:id])
    respond_to do |format|
      if @family.destroy
        format.html {redirect_to action: :index, notice: "Family record was successfully removed."}
      else
        flash.now.alert = "Unable to remove Family."
        format.html {redirect_to :back}
      end
    end
  end

end