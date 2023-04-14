class MedicationsController < ApplicationController
  def index
    matching_medications = Medication.all

    @list_of_medications = matching_medications.order({ :created_at => :desc })

    render({ :template => "medications/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_medications = Medication.where({ :id => the_id })

    @the_medication = matching_medications.at(0)

    render({ :template => "medications/show.html.erb" })
  end

  def create
    the_medication = Medication.new
    the_medication.user_id = params.fetch("query_user_id")
    the_medication.name = params.fetch("query_name")
    the_medication.dosage = params.fetch("query_dosage")
    the_medication.frequency = params.fetch("query_frequency")
    the_medication.start_date = params.fetch("query_start_date")
    the_medication.end_date = params.fetch("query_end_date")

    if the_medication.valid?
      the_medication.save
      redirect_to("/medications", { :notice => "Medication created successfully." })
    else
      redirect_to("/medications", { :alert => the_medication.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_medication = Medication.where({ :id => the_id }).at(0)

    the_medication.user_id = params.fetch("query_user_id")
    the_medication.name = params.fetch("query_name")
    the_medication.dosage = params.fetch("query_dosage")
    the_medication.frequency = params.fetch("query_frequency")
    the_medication.start_date = params.fetch("query_start_date")
    the_medication.end_date = params.fetch("query_end_date")

    if the_medication.valid?
      the_medication.save
      redirect_to("/medications/#{the_medication.id}", { :notice => "Medication updated successfully."} )
    else
      redirect_to("/medications/#{the_medication.id}", { :alert => the_medication.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_medication = Medication.where({ :id => the_id }).at(0)

    the_medication.destroy

    redirect_to("/medications", { :notice => "Medication deleted successfully."} )
  end
end
