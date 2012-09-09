# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
#

post 'latest-posts/change', :to => 'lp_setup#change'
get 'latest-posts', :to => 'lp_setup#index'
