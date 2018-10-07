# Controller for Patient Model.
class V1::PatientsController < ApplicationController
  before_action :set_patient, only: %i[get edit delete]

  # route: /patients
  def index
    @patients = Patient.all
    @patients_json = []
    @patients.each do |patient|
      @patients_json.append(PatientSerializer.new(patient).serializable_hash)
    end
    json_response @patients_json
  end

  # route: /patients/get/:id
  def get
    json_response PatientSerializer.new(@patient).serializable_hash
  end

  # route: /patients/new
  def new
    @patient = Patient.create!(patient_new_params)
    json_response PatientSerializer.new(@patient).serializable_hash
  end

  # route: /patients/edit/:id
  def edit
    @patient.update(patient_update_params)
    json_response PatientSerializer.new(@patient).serializable_hash
  end

  # route: /patients/delete/:id
  def delete
    @patient.destroy
    json_response message: 'Patient Deleted.'
  end

  private

  # whitelist patient new parameters.
  def patient_new_params
    params.require(:patient_new).permit(:first_name, :last_name, :email,
                                        :mobile_number)
  end

  # whitelist patient update parameters.
  def patient_update_params
    params.require(:patient_update).permit(:first_name, :last_name, :email,
                                           :mobile_number)
  end

  # get patient matching :id route parameter.
  def set_patient
    @patient = Patient.find(params[:id])
  end
end
