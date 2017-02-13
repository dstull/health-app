class AppointmentsController < ApplicationController


  # POST /call_logs
  # POST /call_logs.json
  def create
    @call_log = CallLog.new(call_log_params)

    respond_to do |format|
      if @call_log.save
        format.html { redirect_to @call_log, notice: 'Call log was successfully created.' }
        format.json { render :show, status: :created, location: @call_log }
      else
        format.html { render :new }
        format.json { render json: @call_log.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_appointment
    binding.pry
    @appointment = Appointment.new
    @appointment.date_of_visit = params[:date_of_visit]
    @appointment.member_id = params[:member_id]
    params[:appointment_ids].each { |appt| @new_appointments << Appointment.find(appt)} if params[:appointment_ids]
    @new_appointments << @appointment if @appointment.save
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:date_of_visit)
    end
end
