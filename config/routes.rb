Rails.application.routes.draw do

  root 'pages#home'

  # Rotas para exames
  get 'exams', to: 'pages#exams'
  get 'exams/stages/:stage', to: 'pages#stages', as: 'exam_stage'
  get 'exams/stages/:stage/types/:type', to: 'pages#types', as: 'exam_type'
  get 'exams/stages/:stage/types/:type/levels/:level', to: 'pages#levels', as: 'exam_level'
  get 'exams/stages/:stage/types/:type/levels/:level/schedule', to: 'pages#schedule', as: 'exam_schedule'
  get 'exams/stages/:stage/types/:type/levels/:level/schedule/:date', to: 'pages#manager', as: 'exam_manager'

  get 'exam_dates/new', to: 'pages#new_exam_date', as: 'new_exam_date'
  post 'exam_dates', to: 'pages#create_exam_date', as: 'exam_dates'

 get 'levels', to: 'pages#levels'



end

