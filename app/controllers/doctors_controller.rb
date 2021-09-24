class DoctorsController < ApplicationController
  before_action :set_doctor, only: [ :show, :edit, :update, :destroy ]

  # GET /doctors
  def index
    @doctors = Doctor.all
  end

  # GET /doctors/:id
  def show
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
    if @doctor.update(doctor_params)
      redirect_to @doctor, notice: "Médico Atualizado"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_url, notice: 'Médico Excluído'
  end

  private

  def doctor_params
    params.require(:doctor).permit(:name, :email, :crm, :specialty_id)
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end
end
