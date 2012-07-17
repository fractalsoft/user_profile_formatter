# encoding: utf-8

module UserProfileFormatter
  SOCIAL = {
    twitter: {format: %r(\w{1,15}), url: "http://twitter.com/{{NAME}}"},
    facebook: {format: %r([a-zA-Z0-9.]{5,}), url: "https://www.facebook.com/{{NAME}}"},
    youtube: {format: %r([A-Za-z0-9]{3,20}), url: "http://www.youtube.com/user/{{NAME}}"},
    tumblr: {format: %r([a-z0-9][a-z0-9]{0,31}), url: "http://{{NAME}}.tumblr.com/"},
    goldenline: {format: %r([0-9a-zA-Z]*[-_][0-9a-zA-Z]*[-_][0-9a-zA-Z]*|[0-9a-zA-Z]*[-_][0-9a-zA-Z]*), url: "http://www.goldenline.pl/{{NAME}}"},
    blip: {format: %r([a-z][a-z0-9]{2,24}), url: "http://{{NAME}}.blip.pl/"}
  }
  # Following sites don't return code 404:
  # eBay, Allegro

  def self.keys
    SOCIAL.keys
  end

  def self.format(key)
    SOCIAL[key][:format]
  end

  def self.url(key)
    SOCIAL[key][:url]
  end
end
