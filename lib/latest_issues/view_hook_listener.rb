class LatestIssuesViewHookListener < Redmine::Hook::ViewListener

	require File.join(File.dirname(__FILE__), '../../app/models/latest_issues_setup')

        def view_welcome_index_left(context={})
            setup = load_setup()
            if setup[:side] == "left"
                load_issues(setup[:count])
            end
        end

        def view_welcome_index_right(context={})
            setup = load_setup()
            if setup[:side] == "right"
                load_issues(setup[:count])
            end
        end

        def load_setup()
            
	    #setup = LatestIssuesSetup.find_by_id(1)
            setup = nil
	    if setup == nil
                count = LatestIssuesSetup::DEFAULT_COUNT
                side  = LatestIssuesSetup::DEFAULT_SIDE
            else
                count = setup.max_count
                side  = setup.side
            end

            {:count => count, :side => side}
        end

        def load_issues(count)
            html = '<div class="box" id="statuses">'
            html += '<h3 class="icon22 icon22-users">Latest Issues</h3><ul>'
            issues  = Issue.visible(User.current).find(:all, :limit => count, :order => "issues.created_on DESC")
            issues.each do |issue|
                html += <<EOHTML
                  <li>
                      #{link_to h(truncate(issue.subject, :length => 60)), :controller => 'issues', :action => 'show', :id => issue } (#{ format_time(issue.created_on)})  #{ issue.assigned_to ? 'assigned to ' + link_to_user(issue.assigned_to) : " not assigned" }
                                         </li>
EOHTML
            end
            html += '</ul></div>'
            return html
        end
    end

