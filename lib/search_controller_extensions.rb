# frozen_string_literal: true

module DiscourseAnonLimit::SearchControllerExtensions
  def show
    if current_user.nil? && !SiteSetting.anonymous_can_search
      raise Discourse::InvalidAccess
    end
    super
  end

  def query
    if current_user.nil? && !SiteSetting.anonymous_can_search
      raise Discourse::InvalidAccess
    end
    super
  end

  def click
    if current_user.nil? && !SiteSetting.anonymous_can_search
      raise Discourse::InvalidAccess
    end
    super
  end
end
