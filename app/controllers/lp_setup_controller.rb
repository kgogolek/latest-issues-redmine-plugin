class LpSetupController < ApplicationController
  unloadable
  
  def index
       setup = LatestPostsSetup.find_by_id(1)
       
       if setup == nil
         setup = LatestPostsSetup.create(:max_count => LatestPostsSetup::DEFAULT_COUNT, :side => LatestPostsSetup::DEFAULT_SIDE)
       end
       @setup = setup
  end

  def change
      setup = LatestPostsSetup.find_by_id(1)
      setup.max_count = params[:count]
      setup.side  = params[:side]
      if setup.save
         flash[:notice] = 'Latest Posts setup saved.'
      end
      redirect_to "/latest-posts" #:action => 'index'
  end

end
