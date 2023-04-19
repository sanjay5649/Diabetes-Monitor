class BloodSugarLevelsController < ApplicationController
  def index
    the_id = session.fetch(:user_id)

    if the_id == nil
      redirect_to("/user_sign_in", {:notice => "You have to sign in first."})
    else
    matching_blood_sugar_levels = BloodSugarLevel.where({ :user_id => the_id })

    @list_of_blood_sugar_levels = matching_blood_sugar_levels.order({ :created_at => :desc })

    render({ :template => "blood_sugar_levels/index.html.erb" })
    end
  end

  def show
    the_id = params.fetch("path_id")

    matching_blood_sugar_levels = BloodSugarLevel.where({ :id => the_id })

    @the_blood_sugar_level = matching_blood_sugar_levels.at(0)

    render({ :template => "blood_sugar_levels/show.html.erb" })
  end

  def create
    the_blood_sugar_level = BloodSugarLevel.new
    the_blood_sugar_level.user_id = params.fetch("query_user_id")
    the_blood_sugar_level.reading = params.fetch("query_reading")
    the_blood_sugar_level.reading_date = params.fetch("query_reading_date")

    if the_blood_sugar_level.valid?
      the_blood_sugar_level.save
      redirect_to("/blood_sugar_levels", { :notice => "Blood sugar level created successfully." })
    else
      redirect_to("/blood_sugar_levels", { :alert => the_blood_sugar_level.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_blood_sugar_level = BloodSugarLevel.where({ :id => the_id }).at(0)

    the_blood_sugar_level.user_id = params.fetch("query_user_id")
    the_blood_sugar_level.reading = params.fetch("query_reading")
    the_blood_sugar_level.reading_date = params.fetch("query_reading_date")

    if the_blood_sugar_level.valid?
      the_blood_sugar_level.save
      redirect_to("/blood_sugar_levels/#{the_blood_sugar_level.id}", { :notice => "Blood sugar level updated successfully."} )
    else
      redirect_to("/blood_sugar_levels/#{the_blood_sugar_level.id}", { :alert => the_blood_sugar_level.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_blood_sugar_level = BloodSugarLevel.where({ :id => the_id }).at(0)

    the_blood_sugar_level.destroy

    redirect_to("/blood_sugar_levels", { :notice => "Blood sugar level deleted successfully."} )
  end
end
