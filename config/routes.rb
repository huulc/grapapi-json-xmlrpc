GrapeOnRails::Application.routes.draw do
  get 'welcome/index'
  # match 'api/xmlrpc' => 'my#xe_index'
  mount API => '/'
  root 'welcome#index'
end
