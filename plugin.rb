# name: discourse-anon-limit
# about: Anonymous access limiter
# version: 0.1
# authors: elmuerte
# url: https://github.com/magicball-network/discourse-anon-limit

after_initialize do
	module ::DiscourseAnonLimit
		PLUGIN_NAME = "discourse-anon-limit"
	end
	
	class DiscourseAnonLimit::Engine < Rails::Engine
		engine_name DiscourseAnonLimit::PLUGIN_NAME
		isolate_namespace DiscourseAnonLimit
	end

	require_relative "lib/search_controller_extensions.rb"
	
	reloadable_patch do |plugin|
		SearchController.prepend(DiscourseAnonLimit::SearchControllerExtensions)
	end
end

