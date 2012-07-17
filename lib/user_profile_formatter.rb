# encoding: utf-8
require "user_profile_formatter/version"

require "user_profile_formatter/social_media"
require "user_profile_formatter/login_checker"
require "user_profile_formatter/model_additions"
require "user_profile_formatter/railtie" if defined? Rails

module UserProfileFormatter
  def self.format_user_profile(name, key)
    pattern = format(key)
    match_data = pattern.match(name)
    return nil if match_data.nil? or match_data[0] != name
    return nil unless exists? name, url(key)
    name
  end
end
