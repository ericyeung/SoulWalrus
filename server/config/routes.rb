Rails.application.routes.draw do
  
  # http://andrewberls.com/blog/post/api-versioning-with-rails-4
  scope module: 'api' do
    namespace :v1 do
      match 'motd' => 'motd#index', :via => :get
      match 'motd' => 'motd#update', :via => :patch
      match 'eight_ball' => 'eight_ball#index', :via => :get
      match 'streamer' => 'streamer#index', :via => :get
      match 'streamer' => 'streamer#create', :via => :post
      match 'streamer' => 'streamer#destroy', :via => :delete
      match 'streamer/get-live' => 'streamer#getLive', :via => :get
      match 'skype' => 'skype_subscribe#index', :via => :get
      match 'skype' => 'skype_subscribe#create', :via => :post
      match 'skype' => 'skype_subscribe#destroy', :via => :delete
      match 'skype2' => 'skype_subscribe2#index', :via => :get
      match 'skype2' => 'skype_subscribe2#create', :via => :post
      match 'skype2' => 'skype_subscribe2#destroy', :via => :delete
      match 'hscard/:name' => 'hs_card#index', :via => :get
      match 'hscard' => 'hs_card#index', :via => :get
      match 'csgo/bot-train-t' => 'csgo#bot_train_t', :via => :get
      match 'csgo/bot-train-ct' => 'csgo#bot_train_ct', :via => :get
      match 'steam/join-game' => 'csgo#join_game', :via => :get
      match 'music' => 'music#get_recommendation', :via => :get
      match 'play-song' => 'music#play_song', :via => :get
      match 'callback' => 'callback#index', :via => :get
      #match 'twilio' => 'twilio_subscribe#index', :via => :get
      #match 'twilio' => 'twilio_subscribe#create', :via => :post
      #match 'twilio' => 'twilio_subscribe#destroy', :via => :delete
      match 'point' => 'point#index', :via => :get
      match 'point' => 'point#create', :via => :post
      match 'point' => 'point#update', :via => :put
      match 'point/leaderboard' => 'point#leaderboard', :via => :get
      match 'point/most-recent' => 'point#get_most_recent', :via => :get
      
      match 'point/:user_name' => 'point#get_user', :via => :get
      match 'point-id/:friendly_id' => 'point#get_pokemon', :via => :get
      
      match 'poke-shuffle' => 'poke_shuffle#index', :via => :get
      match 'poke-shuffle' => 'poke_shuffle#create', :via => :post
      match 'poke-shuffle/prize' => 'poke_shuffle#create_prize', :via => :post
      match 'poke-shuffle' => 'poke_shuffle#delete', :via => :delete
    end
  end


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
