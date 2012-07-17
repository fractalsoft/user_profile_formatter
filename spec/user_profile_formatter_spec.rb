# encoding: utf-8
require "spec_helper"

EXAMPLES = {
  twitter: {
    "fractal_soft" => true,
    "twitter" => true,
    "facebook" => true,
    "google" => true,
    "google+" => false,
    "superuser" => false,
  },
  facebook: {},
  youtube: {
    "fractalsoft" => true,
  },
  tumblr: {
    "fractalsoft" => true,
    "google" => true,
    "google+" => false,
  },
  goldenline: {},
  blip: {
    "fractalsoft" => true,
  }
}

describe :UserProfileFormatter do
  context "validate user profile name" do
    EXAMPLES.each_pair do |key, examples|
      examples.each_pair do |name, correct|
        it "#{name} in #{key}" do
          result = UserProfileFormatter.format_user_profile(name, key)
          if correct
            result.should == name
          else
            result.should_not == name
          end
        end
      end
    end
  end
end
