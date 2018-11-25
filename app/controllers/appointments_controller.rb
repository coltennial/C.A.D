class AppointmentsController < ApplicationController
  before_action :set_doctor
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @time = @doctor.appointments.where(role: 'time')
  end

  def new
    @client = Client.all - @doctor.clients 
    @appointment = @doctor .appointments.new
  end

  def create
    @appointment = @doctor.appointments.new(appointment_params)
    if @appointment.save
      redirect_to doctor_appointments_path
    else
      render :new
    end
  end

  def destroy
    appointment = @doctor.appointments.find(params[:id])
    appointment.destroy
    redirect_to doctor_clients_path
  end

 private
   def set_doctor
     @doctor = Doctor.find(params[:doctor_id]) 
   end

   def appointment_params
     params.require(:appointment).permit(:role, :client_id)
   end
end

