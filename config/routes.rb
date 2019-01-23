Rails.application.routes.draw do
  resources :projects do
    member do
      post 'add_people'
      delete 'remove_people/:person_id', to: 'project#remove_person', as: 'remove_person'
  end
  
  resources :people do
    member do
      post 'add_project'
      delete 'remove_project/:project_id', to: 'people#remove_project', as: 'remove_project' 
      end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
