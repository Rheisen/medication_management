# Controller for Medication model.
class V1::MedicationsController < ApplicationController
  before_action :set_medication, only: %i[get edit delete]

  # route: /medications
  def index
    @medications = Medication.all
    @medications_json = []
    @medications.each do |medication|
      @medications_json
        .append(MedicationSerializer.new(medication).serializable_hash)
    end
    json_response @medications_json
  end

  # route: /medications/get/:id
  def get
    json_response MedicationSerializer.new(@medication).serializable_hash
  end

  # route: /medications/new
  def new
    @medication = Medication.create!(medication_new_params)
    json_response MedicationSerializer.new(@medication).serializable_hash
  end

  # route: /medications/edit/:id
  def edit
    @medication.update(medication_update_params)
    json_response MedicationSerializer.new(@medication).serializable_hash
  end

  # route: /medications/delete/:id
  def delete
    @medication.destroy
    json_response message: 'Medication Deleted.'
  end

  private

  # whitelist medication new parameters.
  def medication_new_params
    params.require(:medication_new).permit(:name, :uses, :side_effects,
                                           :available)
  end

  # whitelist medication update parameters.
  def medication_update_params
    params.require(:medication_update).permit(:name, :uses, :side_effects,
                                              :available)
  end

  # get medication matching :id route parameter.
  def set_medication
    @medication = Medication.find(params[:id])
  end
end
