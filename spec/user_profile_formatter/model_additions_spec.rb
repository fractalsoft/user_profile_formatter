# encoding: utf-8
require "spec_helper"

class UserProfile < SuperModel::Base
  include ActiveModel::Validations::Callbacks
  extend UserProfileFormatter::ModelAdditions
  format_user_profile :twitter
  format_user_profile :youtube
  format_user_profile :tumblr
  format_user_profile :blip
end

describe UserProfileFormatter::ModelAdditions do
  it "validates correct social media formats" do
    attributes = {
      twitter: "fractal_soft",
      youtube: "fractalsoft",
      tumblr: "fractalsoft",
      blip: "fractalsoft",
    }
    user_profile = UserProfile.new(attributes)
    user_profile.should be_valid
  end

  it "validates wrong social media formats" do
    attributes = {
      twitter: "google+"
    }
    user_profile = UserProfile.new(attributes)
    user_profile.should_not be_valid
  end
end
