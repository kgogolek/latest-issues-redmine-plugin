class LatestPostsSetup < ActiveRecord::Base
  unloadable

  require_dependency 'latest_posts/view_hook_listener'

  attr_accessible :max_count, :side  

  DEFAULT_SIDE  = 'left'
  DEFAULT_COUNT = 5

end
