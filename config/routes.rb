Rails.application.routes.draw do
  scope '/parking', controller: 'parking' do
    post '', to: 'parking#in'
    put ':id/pay', to: 'parking#pay'
    put ':id/out', to: 'parking#out'
    get ':plate', to: 'parking#history'
  end

  resources :cars, except: :destroy

  root 'help#index'
  match "*path", to: "help#index", via: :all
end
