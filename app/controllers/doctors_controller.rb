class DoctorsController < ApplicationController
  # GET /doctors
  def index
    @doctors = Doctor.all
  end

  # GET /doctors/:id
  def show
    @doctor = Doctor.find(params[:id])
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      redirect_to @doctor, notice: 'Médico criado'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :crm, :specialty_id)
  end
end
