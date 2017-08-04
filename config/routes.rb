Rails.application.routes.draw do

root 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  resources :ingredients
end

# GET /cocktails => cocktails#index
# GET /cocktails/new => cocktails#new
# POST /cocktails => cocktails#create
# GET /cocktails/1 => cocktails#show
# GET /cocktails/1/edit => cocktails#edit
# PATCH /cocktails/1 => cocktails#update
# DELETE /cocktails/1 => cocktails#destroy








# GET /cocktails/1/doses => doses#index
# GET /cocktails/1/new => doses#new
# POST /cocktails/1/doses => doses#create
# GET /cocktails/1/doses/1 => doses#show
# GET /cocktails/1/doses/1/edit => doses#edit
# PATCH /cocktails/1/doses/1 => doses#update
# DELETE /cocktails/1/doses/1 => doses#destroy

# POST => Create
# GET => Read (não modifica *nada*)
# PATCH/PUT => Update
# DELETE => Delete


# GET /ingredients => ingredients#index
# GET /ingredients/new => ingredients#new
# POST /ingredients => ingredients#create
# GET /ingredients/1 => ingredients#show
# GET /ingredients/1/edit => ingredients#edit
# PATCH /ingredients/1 => ingredients#update
# DELETE /ingredients/1 => ingredients#destroy
