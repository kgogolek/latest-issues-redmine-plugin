# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
#

post 'latest-issues/change', :to => 'li_setup#change'
get 'latest-issues', :to => 'li_setup#index'
