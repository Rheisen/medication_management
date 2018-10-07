class V1::PrescriptionsController < ApplicationController
  before_action :set_prescription, only: %i[get edit delete]

  # route: /prescriptions
  def index
    @prescriptions = Prescription.all
    @prescriptions_json = []
    @prescriptions.each do |prescription|
      @prescriptions_json.append(PrescriptionSerializer.new(prescription).serializable_hash)
    end
    json_response @prescriptions_json
  end

  # route: /prescriptions/get/:id
  def get
    json_response PrescriptionSerializer.new(@prescription).serializable_hash
  end

  # route: /prescriptions/new
  def new
    @prescription = Prescription.create!(prescription_new_params)
    json_response PrescriptionSerializer.new(@prescription).serializable_hash
  end

  # route: /prescriptions/edit/:id
  def edit
    @prescription.update(prescription_update_params)
    json_response PrescriptionSerializer.new(@prescription).serializable_hash
  end

  # route: /prescriptions/delete/:id
  def delete
    @prescription.destroy
    json_response message: 'Prescription Deleted.'
  end

  private

  # whitelist prescription new parameters.
  def prescription_new_params
    params.require(:prescription_new).permit(:dosage, :active, :patient_id,
                                             :medication_id)
  end

  # whitelist prescription update parameters.
  def prescription_update_params
    params.require(:prescription_update).permit(:dosage, :active, :patient_id,
                                                :medication_id)
  end

  # get prescription matching :id route parameter.
  def set_prescription
    @prescription = Prescription.find(params[:id])
  end
end
