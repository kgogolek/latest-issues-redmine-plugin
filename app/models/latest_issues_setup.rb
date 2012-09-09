class LatestIssuesSetup < ActiveRecord::Base
  unloadable

  attr_accessible :max_count, :side  

  DEFAULT_SIDE  = 'left'
  DEFAULT_COUNT = 5

end
