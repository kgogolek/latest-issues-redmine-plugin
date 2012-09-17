class LiSetupController < ApplicationController
  unloadable


  def index
	setup = LatestIssuesSetup.find_by_id(1)
       
       if setup == nil
         setup = LatestIssuesSetup.create(:max_count => LatestIssuesSetup::DEFAULT_COUNT, :side => LatestIssuesSetup::DEFAULT_SIDE)
       end
       @setup = setup
  end

  def change
	setup = LatestIssuesSetup.find_by_id(1)
      setup.max_count = params[:count]
      setup.side  = params[:side]
      if setup.save
         flash[:notice] = 'Latest Issues setup saved.'
      end
      redirect_to "/latest-issues" #:action => 'index'
  end
end
