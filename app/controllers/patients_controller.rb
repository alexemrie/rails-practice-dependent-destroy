class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def create
    patient = Patient.new(params.require(:patient).permit(:first_name, :last_name))
    patient.save
      redirect_to root_path
  end

  def destroy
    patient = Patient.find(params[:id])
    patient.destroy
    redirect_to root_path
  end
end
