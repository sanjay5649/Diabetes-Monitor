Rails.application.routes.draw do

  # Routes for the Exercise log resource:

  # CREATE
  post("/insert_exercise_log", { :controller => "exercise_logs", :action => "create" })
          
  # READ
  get("/exercise_logs", { :controller => "exercise_logs", :action => "index" })
  
  get("/exercise_logs/:path_id", { :controller => "exercise_logs", :action => "show" })
  
  # UPDATE
  
  post("/modify_exercise_log/:path_id", { :controller => "exercise_logs", :action => "update" })
  
  # DELETE
  get("/delete_exercise_log/:path_id", { :controller => "exercise_logs", :action => "destroy" })

  #------------------------------

  # Routes for the Exercise log resource:

  # CREATE
  post("/insert_exercise_log", { :controller => "exercise_logs", :action => "create" })

  # READ
  get("/exercise_logs", { :controller => "exercise_logs", :action => "index" })

  get("/exercise_logs/:path_id", { :controller => "exercise_logs", :action => "show" })

  # UPDATE

  post("/modify_exercise_log/:path_id", { :controller => "exercise_logs", :action => "update" })

  # DELETE
  get("/delete_exercise_log/:path_id", { :controller => "exercise_logs", :action => "destroy" })

  #------------------------------

  # Routes for the Meal log resource:

  # CREATE
  post("/insert_meal_log", { :controller => "meal_logs", :action => "create" })

  # READ
  get("/meal_logs", { :controller => "meal_logs", :action => "index" })

  get("/meal_logs/:path_id", { :controller => "meal_logs", :action => "show" })

  # UPDATE

  post("/modify_meal_log/:path_id", { :controller => "meal_logs", :action => "update" })

  # DELETE
  get("/delete_meal_log/:path_id", { :controller => "meal_logs", :action => "destroy" })

  #------------------------------

  # Routes for the Meal resource:

  # CREATE
  post("/insert_meal", { :controller => "meals", :action => "create" })

  # READ
  get("/meals", { :controller => "meals", :action => "index" })

  get("/meals/:path_id", { :controller => "meals", :action => "show" })

  # UPDATE

  post("/modify_meal/:path_id", { :controller => "meals", :action => "update" })

  # DELETE
  get("/delete_meal/:path_id", { :controller => "meals", :action => "destroy" })

  #------------------------------

  # Routes for the Medication resource:

  # CREATE
  post("/insert_medication", { :controller => "medications", :action => "create" })

  # READ
  get("/medications", { :controller => "medications", :action => "index" })

  get("/medications/:path_id", { :controller => "medications", :action => "show" })

  # UPDATE

  post("/modify_medication/:path_id", { :controller => "medications", :action => "update" })

  # DELETE
  get("/delete_medication/:path_id", { :controller => "medications", :action => "destroy" })

  #------------------------------

  # Routes for the Blood sugar level resource:

  # CREATE
  post("/insert_blood_sugar_level", { :controller => "blood_sugar_levels", :action => "create" })

  # READ
  get("/blood_sugar_levels", { :controller => "blood_sugar_levels", :action => "index" })

  get("/blood_sugar_levels/:path_id", { :controller => "blood_sugar_levels", :action => "show" })

  # UPDATE

  post("/modify_blood_sugar_level/:path_id", { :controller => "blood_sugar_levels", :action => "update" })

  # DELETE
  get("/delete_blood_sugar_level/:path_id", { :controller => "blood_sugar_levels", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create" })

  # EDIT PROFILE FORM
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })

  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })

  # SIGN OUT
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })

  #------------------------------
  root "blood_sugar_levels#index"
end
