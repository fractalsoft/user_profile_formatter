# encoding: utf-8

module UserProfileFormatter
  module ModelAdditions
    # Call <tt>format_user_profile</tt> in an Active Record model class
    # to validate username of social media.
    #
    #   class Profile < ActiveRecord::Base
    #     format_user_profile :twitter
    #     format_user_profile :facebook
    #     format_user_profile :youtube
    #     format_user_profile :tumblr
    #     format_user_profile :goldenline
    #     format_user_profile :blip
    #   end
    #
    def format_user_profile(attribute, param = nil)
      param = attribute if param.nil? and UserProfileFormatter.keys.include? attribute
      before_validation do
        send("#{attribute}=", UserProfileFormatter.format_user_profile(send(attribute), param))
      end
      validates_format_of attribute, with: UserProfileFormatter.format(param), message: "is not a valid"
    end
  end
end