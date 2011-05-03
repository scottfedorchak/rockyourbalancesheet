Valleywineworks::Application.routes.draw do
  resources :posts do
    resources :comments
  end

  #resources :main_pages

  root :to => 'main_pages#home'
  match 'main_pages/home' => 'main_pages#home'
  match 'main_pages/about' => 'main_pages#about'
  match 'main_pages/payroll' => 'main_pages#payroll'
  match 'main_pages/quickbooks_consulting' => 'main_pages#quickbooks_consulting'
  match 'main_pages/bookkeeping' => 'main_pages#bookkeeping'
  match 'main_pages/tax_preparation' => 'main_pages#tax_preparation'
  match 'main_pages/blog' => 'main_pages#blog'
  match 'main_pages/shop' => 'main_pages#shop'
  match 'main_pages/contact' => 'main_pages#contact'


  resources :sessions
  match 'login' => 'sessions#create'
  match 'logout' => 'sessions#destroy'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/tax_preparation.html.erb.erb.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
