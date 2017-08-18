Rails.application.routes.draw do
  get 'productos/index'
  get 'productos/new'
  get 'productos/save'
  
  get 'productos/update/:id' => 'productos#update', as: :productos_update
  get 'productos/edit/:id' => 'productos#edit', as: :productos_edit
  get 'productos/delete/:id' => 'productos#delete', as: :productos_delete

  get 'marcas/index'
  get 'marcas/new'
  get 'marcas/save'
  
  get 'marcas/update/:id' => 'marcas#update', as: :marcas_update
  get 'marcas/edit/:id' => 'marcas#edit', as: :marcas_edit
  get 'marcas/delete/:id' => 'marcas#delete', as: :marcas_delete

get 'marcas/index' => 'marcas#index', as: :options_for_select
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'marcas#index'
  match ':controller(/:action(/:id))(.:format)', :via => :all
end
