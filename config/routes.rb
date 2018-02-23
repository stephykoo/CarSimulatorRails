Rails.application.routes.draw do
  root 'simulators#create'
  get '/status' => 'simulators#status'
  get '/accelerate' => 'cars#accelerate'
  get '/brake' => 'cars#brake'
  get '/lights' => 'cars#lights'
  get '/brake_set' => 'cars#brake_set'
end
