class LpSetupController < ApplicationController
  unloadable


  def index
      if post?()
        @setup = LatestPostSetup.find(1)
        @setup.save
      else	
        @setup = LatestPostsSetup.all	
      end
  end
end
