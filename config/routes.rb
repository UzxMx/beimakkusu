Rails.application.routes.draw do

  devise_for :users
  root 'admin/templates#index'

  namespace 'admin' do
    get '/', to: 'templates#index'
    resources :templates do
      collection do
        get 'get_html'
      end
    end
    resources :users
  end
end
