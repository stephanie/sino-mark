SinoMark::Application.routes.draw do

  resources :main, only: [:index]

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'

  root 'main#index'

end
