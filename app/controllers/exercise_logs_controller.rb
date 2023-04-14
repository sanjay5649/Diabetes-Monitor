class ExerciseLogsController < ApplicationController
  def index
    matching_exercise_logs = ExerciseLog.all

    @list_of_exercise_logs = matching_exercise_logs.order({ :created_at => :desc })

    render({ :template => "exercise_logs/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_exercise_logs = ExerciseLog.where({ :id => the_id })

    @the_exercise_log = matching_exercise_logs.at(0)

    render({ :template => "exercise_logs/show.html.erb" })
  end

  def create
    the_exercise_log = ExerciseLog.new
    the_exercise_log.user_id = params.fetch("query_user_id")
    the_exercise_log.exercise_name = params.fetch("query_exercise_name")
    the_exercise_log.duration_minutes = params.fetch("query_duration_minutes")
    the_exercise_log.calories_burned = params.fetch("query_calories_burned")
    the_exercise_log.exercise_date = params.fetch("query_exercise_date")

    if the_exercise_log.valid?
      the_exercise_log.save
      redirect_to("/exercise_logs", { :notice => "Exercise log created successfully." })
    else
      redirect_to("/exercise_logs", { :alert => the_exercise_log.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_exercise_log = ExerciseLog.where({ :id => the_id }).at(0)

    the_exercise_log.user_id = params.fetch("query_user_id")
    the_exercise_log.exercise_name = params.fetch("query_exercise_name")
    the_exercise_log.duration_minutes = params.fetch("query_duration_minutes")
    the_exercise_log.calories_burned = params.fetch("query_calories_burned")
    the_exercise_log.exercise_date = params.fetch("query_exercise_date")

    if the_exercise_log.valid?
      the_exercise_log.save
      redirect_to("/exercise_logs/#{the_exercise_log.id}", { :notice => "Exercise log updated successfully."} )
    else
      redirect_to("/exercise_logs/#{the_exercise_log.id}", { :alert => the_exercise_log.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_exercise_log = ExerciseLog.where({ :id => the_id }).at(0)

    the_exercise_log.destroy

    redirect_to("/exercise_logs", { :notice => "Exercise log deleted successfully."} )
  end
end
