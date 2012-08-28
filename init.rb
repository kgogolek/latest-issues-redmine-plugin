require 'redmine'

require_dependency 'latest_posts/view_hook_listener'

Redmine::Plugin.register :latest_posts do
  name 'Latest Posts plugin'
  author 'Kasia Gogolek'
  description 'This plugin will display latest posts on the Redmine Homepage'
  version '0.0.1'
  url 'http://gogolek.co.uk/code/latest-posts/'
  author_url 'http://www.gogolek.co.uk'
  menu :admin_menu, :latest_polls, {:controller => 'LpSetup', :action => 'index'}, :caption => 'Latest Posts'
end
