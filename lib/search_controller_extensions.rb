
module DiscourseAnonLimit::SearchControllerExtensions
	def show
		raise Discourse::InvalidAccess if current_user.nil? and !SiteSetting.anonymous_can_search
		super
	end
	
	def query
		raise Discourse::InvalidAccess if current_user.nil? and !SiteSetting.anonymous_can_search
		super
	end
	
	def click
		raise Discourse::InvalidAccess if current_user.nil? and !SiteSetting.anonymous_can_search
		super
	end
end

