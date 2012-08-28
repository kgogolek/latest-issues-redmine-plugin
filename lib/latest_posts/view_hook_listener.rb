# lib/latest_posts_hook_listener.rb
module LatestPosts
    class ViewHookListener < Redmine::Hook::ViewListener
	issues  = Issue.find(:all, :limit => 5, :order => "created_on DESC")
        render_on :view_welcome_index_left, :locals => {:issues => issues}, :partial => "latest_issues/issues" 
    end
end
