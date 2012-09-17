require 'redmine'

require_dependency 'latest_issues/view_hook_listener'
require_dependency File.expand_path(File.join(File.dirname(__FILE__), 'app/controllers/li_setup_controller'))

Redmine::Plugin.register :latest_issues do
  name 'Latest Issues plugin'
  author 'Kasia Gogolek'
  description 'This plugin will display latest issues on the Redmine Homepage'
  version '0.0.1'
  url 'http://redmine.gogolek.co.uk/projects/redmine-latest-issues'
  author_url 'http://www.gogolek.co.uk'
  permission :li_setup, { :li_setup => [:index, :change] }, :public => true
  menu :admin_menu, :latest_issues, {:controller => 'li_setup', :action => 'index'}, :caption => 'Latest Issues'
end
