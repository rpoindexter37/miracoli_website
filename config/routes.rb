Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'homepage#index'

  get 'index'         => 'homepage#index'
  get 'restore'       => 'homepage#restore', as: :restore
  get 'service'       => 'homepage#service', as: :service
  get 'swatch'        => 'homepage#swatch',  as: :swatch
  get 'shop'          => 'homepage#shop'  ,  as: :shop
  get 'contact'       => 'homepage#contact', as: :contact

  post 'contact_email' => 'homepage#contact_email'

  get 'resling'      => 'homepage#resling', as: :resling
  get 'restrap'      => 'homepage#restrap', as: :restrap
  get 'sandblast'      => 'homepage#sandblast', as: :sandblast_and_powdercoat
  get 'cushion'      => 'homepage#cushion', as: :cushion
  get 'umbrella'      => 'homepage#umbrella', as: :umbrella
  get 'table'      => 'homepage#table', as: :table
  get 'misc'      => 'homepage#misc', as: :misc_and_repairs

  get 'swatch_snp' => 'homepage#swatch_snp', as: :swatch_snp
  get 'swatch_fabric' => 'homepage#swatch_fabric', as: :swatch_fabric
  get 'swatch_vinyl' => 'homepage#swatch_vinyl', as: :swatch_vinyl




  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
