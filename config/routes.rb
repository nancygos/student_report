Rails.application.routes.draw do
  get 'student/index'

  get 'student/new'
  post 'student/new'
  
  get 'student/show'
  get 'student/edit'
  get 'student/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
