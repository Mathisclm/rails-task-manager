Rails.application.routes.draw do

root to: 'tasks#index'
# quand on arrive sur la home page
# on va directement sur l'action index

resources :tasks, only: [:index, :show, :new, :create]


get 'tasks', to: 'tasks#index'
# => array d'objet tasks
#[<task7827387283>, <task7827387686> ]

get 'tasks/new', to: 'tasks#new'
post 'tasks', to: 'tasks#create'

get 'tasks/:id', to: 'tasks#show'

get 'tasks/:id/edit', to: 'tasks#edit'
patch 'tasks/:id', to: 'tasks#update'


delete 'tasks/:id', to: 'tasks#destroy'

end

#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# end

#raccourcis each tab - lt tab >> link_to
