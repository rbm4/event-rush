Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#main'
  match 'event', to: 'estimates#newEvent', via: [:post]
  match 'event/show', to: 'estimates#listEvents', via: [:get]
  match 'event/estimate/', to: 'estimates#estimateScreen', via: [:get]
  match 'event/estimate/:id', to: 'estimates#estimateEvent', via: [:post]
end
