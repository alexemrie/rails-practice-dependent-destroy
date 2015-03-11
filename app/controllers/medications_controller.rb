class MedicationsController < ApplicationController
  def show
    @medication = Medication.find(params[:id])
  end

  def new
    @medication = Medication.new
  end

  def create
    medication = Medication.new(params.require(:medication).permit(:name))
    medication.save
      redirect_to root_path
  end

  def destroy
    medication = Medication.find(params[:id])
    medication.destroy
    redirect_to root_path
  end
end
