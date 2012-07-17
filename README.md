# UserProfileFormatter

UserProfileFormatter is a gem to validate a username of social media.
If username does not exists then the name is not valid.
Integrated with:
- Twitter
- Facebook
- YouTube
- Tumblr
- GoldenLine
- Blip

## Installation

Add this line to your application's Gemfile:

```ruby
    gem 'user_profile_formatter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install user_profile_formatter

**Requires Ruby 1.9.2 or latter.**

## Usage

To start using **UserProfileFormatter** you just have to call format_user_profile in an ActiveRecord class and pass the name of the attribute. The second parameter is social media. If username is the same like social media then you need not specify second parameter.

```ruby
class Profile < ActiveRecord::Base
  format_user_profile :twitter
  format_user_profile :facebook
  format_user_profile :youtube
  format_user_profile :tumblr
  format_user_profile :goldenline
  format_user_profile :blip
end
```

Or use specific names:

```ruby
class Profile < ActiveRecord::Base
  format_user_profile :twitter_name, :twitter
  format_user_profile :facebook_name, :facebook
  format_user_profile :youtube_name, :youtube
  format_user_profile :tumblr_name, :tumblr
  format_user_profile :goldenline_name, :goldenline
  format_user_profile :blip_name, :blip
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
