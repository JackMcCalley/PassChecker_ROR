Rails.application.routes.draw do
  get '/password' => 'password#PasswordChecker'
  get '/signup' => 'password#SignUp'
  get '/success' => 'password#Success'
end

# resources :pages do
#   collection do
#     get :new_idea
#   end
# end
