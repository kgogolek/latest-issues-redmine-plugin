Redmine plugin: Latest Issues
=============================

Latest Issues is a plugin that displays most recently added issues and information on who they were assigned to.
You can configure how many latest issues you want to see, and which side of the home page you want to display them on.

Installation
============
1. Follow the Redmine plugin installation steps at: www.redmine.org/wiki/redmine/Plugins Make sure the plugin is installed to Make sure you install the plugin to vendor/plugins/ for Redmine 1.x, for Redmine 2.x install it to plugins.

2. Run the plugin migrations +rake db:migrate_plugins+

3. Restart your Redmine web servers (e.g. mongrel, thin, mod_rails)

Plugin should work now.

Configuration
============

You can configure the number of latest issues displayed, and the side they will display at, if you go to Administration => Latest Issues.

Contact
=======

You can log bugs and feature requests for this plugin here:
http://redmine.gogolek.co.uk/projects/redmine-latest-issues

If you would like to send me an email, here you go: kasia@gogolek.co.uk

If you would like to read my blog, please visit:
http://www.gogolek.co.uk

Or follow me on twitter http://twitter.com/morekasia
