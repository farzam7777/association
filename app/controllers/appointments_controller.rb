class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
    @doctors = Doctor.all
    @patients = Patient.all
  end
  
  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to @appointment, notice: 'Appointment is successfully created.'
    else
      @doctors = Doctor.all
      @patients = Patient.all
      flash.now[:error] = "Could not save appointment"
      render :new
    end
  end

  def edit
  end

  def show
    @appointment = Appointment.includes(:doctor, :patient).find params[:id]
  end
  
  private
  
    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :date)
    end
end
