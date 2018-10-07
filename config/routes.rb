Rails.application.routes.draw do
  namespace :v1, defaults: { format: :json } do
    # patient GET routes
    get '/patients/', to: 'patients#index'
    get '/patients/get/:id', to: 'patients#get'
    # patient POST routes
    post '/patients/new', to: 'patients#new'
    # patient PATCH routes
    patch '/patients/edit/:id', to: 'patients#edit'
    # patient DELETE routes
    delete '/patients/delete/:id', to: 'patients#delete'

    # prescription GET routes
    get '/prescriptions/', to: 'prescriptions#index'
    get '/prescriptions/get/:id', to: 'prescriptions#get'
    # prescription POST routes
    post '/prescriptions/new', to: 'prescriptions#new'
    # prescription PATCH routes
    patch '/prescriptions/edit/:id', to: 'prescriptions#edit'
    # prescription DELETE routes
    delete '/prescriptions/delete/:id', to: 'prescriptions#delete'

    # medication GET routes
    get '/medications/', to: 'medications#index'
    get '/medications/get/:id', to: 'medications#get'
    # medication POST routes
    post '/medications/new', to: 'medications#new'
    # medication PATCH routes
    patch '/medications/edit/:id', to: 'medications#edit'
    # medication DELETE routes
    delete '/medications/delete/:id', to: 'medications#delete'
  end
end
