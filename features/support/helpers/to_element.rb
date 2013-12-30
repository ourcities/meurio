def to_element string
  case string
  when "the Meu Rio's vision"
    ".vision"
  when "the Meu Rio's principles"
    ".principles"
  when "the Meu Rio's funding"
    ".funding"
  when "the campaign on the mobilization history"
    ".history .item.campaigns"
  when "the petition on the mobilization history"
    ".history .item.petitions"
  when "the problem on the mobilization history"
    ".history .item.problems"
  when "the event on the mobilization history"
    ".history .item.events"
  when "the tweet on the mobilization comments"
    ".comments .item.tweets"
  when "tweets on the mobilization comments"
    ".comments .item.tweets"
  when "the tweet's hashtag link"
    ".comments .item.tweets a"
  when "the tweet's link"
    ".comments .item.tweets a"
  when "the twitter username's link"
    ".comments .item.tweets .username a"
  when "the pokes counter"
    ".pokes_counter .counter"
  when "the ideas counter"
    ".ideas_counter .counter"
  when "the Facebook shares counter"
    ".shares_counter .counter"
  when "the Facebook shares counter"
    ".shares_counter .counter"
  when "the attendees counter"
    ".attending_count .counter"
  when "the signatures counter"
    ".signatures_count .counter"
  when "this mobilization have no image yet"
    ".images .empty"
  when "this mobilization image"
    ".images img[src='#{@image.file.square.url}']"
  when "this mobilization have no comment yet"
    ".comments .empty"
  when "this mobilization Facebook post"
    ".facebook_posts .text"
  when "the mobilization form"
    ".mobilization form"
  when "the Twitter share button of this mobilization"
    ".mobilization .share .twitter-share-button"
  when "the Facebook share button of this mobilization"
    ".mobilization .share .facebook-share-button"
  when "mobilization title field error"
    ".field_with_errors label[for='mobilization_title']"
  when "mobilization short title field error"
    ".field_with_errors label[for='mobilization_short_title']"
  when "mobilization description field error"
    ".field_with_errors label[for='mobilization_description']"
  when "mobilization hashtag field error"
    ".field_with_errors label[for='mobilization_hashtag']"
  when "mobilization image field error"
    ".field_with_errors label[for='mobilization_image']"
  when "the action of the day"
    "#action-of-the-day"
  when "this mobilization have no clipping yet"
    ".clippings .empty"
  when "this mobilization clipping"
    ".clippings .body"
  when "the team"
    "#team"
  when "the team button"
    "team_button"
  when "the edit mobilization button"
    "edit_mobilization_button"
  when "the login form"
    ".login form"
  when "login email field error"
    ".field_with_errors label[for='login_email']"
  when "login password field error"
    ".field_with_errors label[for='login_password']"
  when "signup first name field error"
    ".field_with_errors label[for='signup_first_name']"
  when "signup last name field error"
    ".field_with_errors label[for='signup_last_name']"
  when "signup email field error"
    ".field_with_errors label[for='signup_email']"
  when "signup password field error"
    ".field_with_errors label[for='signup_password']"
  when "password recovery email field error"
    ".field_with_errors label[for='password_recovery_email']"
  when "current password field error"
    ".field_with_errors label[for='user_current_password']"
  when "a success message"
    ".flash .notice"
  when "an alert message"
    ".flash .alert"
  when "this mobilization in the mobilizations list"
    ".mobilizations .mobilization"
  when "the network explanation"
    ".network"
  when "the users button"
    "users_button"
  when "the users"
    "#users"
  when "the edit user form"
    "form.edit_user"
  when "user first name field error"
    ".field_with_errors label[for='user_first_name']"
  when "user last name field error"
    ".field_with_errors label[for='user_last_name']"
  when "this campaign on the users activities"
    ".users_activities .campaigns"
  when "this poke on the users activities"
    ".users_activities .pokes"
  when "this problem on the users activity"
    ".users_activities .problems"
  when "this idea on the users activity"
    ".users_activities .ideas"
  when "home address"
    ".home-address"
  when "work address"
    ".work-address"
  when "this user image"
    "img[src='#{@user.avatar_url}']"
  when "this user name"
    ".user_name"
  when "this user profession"
    ".user_profession"
  when "this user Facebook link"
    ".user_facebook_url[href='https://www.facebook.com/#{@user.facebook}']"
  when "this user Twitter link"
    ".user_twitter_url[href='https://twitter.com/#{@user.twitter}']"
  when "this user city"
    ".user_city"
  when "this user district"
    ".user_district"
  when "this user bio"
    ".user_bio"
  when "you are not authorized to access this page"
    ".alert"
  when "there is no activity yet"
    ".activities .empty"
  when "this poke in the activity feed"
    ".activities .pokes"
  when "this campaign in the activity feed"
    ".activities .campaigns"
  when "this idea in the activity feed"
    ".activities .ideas"
  when "this problem in the activity feed"
    ".activities .problems"
  else
    string    
  end
end
