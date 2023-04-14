class MealLogsController < ApplicationController
  def index
    matching_meal_logs = MealLog.all

    @list_of_meal_logs = matching_meal_logs.order({ :created_at => :desc })

    render({ :template => "meal_logs/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_meal_logs = MealLog.where({ :id => the_id })

    @the_meal_log = matching_meal_logs.at(0)

    render({ :template => "meal_logs/show.html.erb" })
  end

  def create
    the_meal_log = MealLog.new
    the_meal_log.meal_id = params.fetch("query_meal_id")
    the_meal_log.food_item = params.fetch("query_food_item")
    the_meal_log.carbohydrates = params.fetch("query_carbohydrates")
    the_meal_log.calories = params.fetch("query_calories")

    if the_meal_log.valid?
      the_meal_log.save
      redirect_to("/meal_logs", { :notice => "Meal log created successfully." })
    else
      redirect_to("/meal_logs", { :alert => the_meal_log.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_meal_log = MealLog.where({ :id => the_id }).at(0)

    the_meal_log.meal_id = params.fetch("query_meal_id")
    the_meal_log.food_item = params.fetch("query_food_item")
    the_meal_log.carbohydrates = params.fetch("query_carbohydrates")
    the_meal_log.calories = params.fetch("query_calories")

    if the_meal_log.valid?
      the_meal_log.save
      redirect_to("/meal_logs/#{the_meal_log.id}", { :notice => "Meal log updated successfully."} )
    else
      redirect_to("/meal_logs/#{the_meal_log.id}", { :alert => the_meal_log.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_meal_log = MealLog.where({ :id => the_id }).at(0)

    the_meal_log.destroy

    redirect_to("/meal_logs", { :notice => "Meal log deleted successfully."} )
  end
end
