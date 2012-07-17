# encoding: utf-8
require "net/http"
require "net/https"

module UserProfileFormatter
  def self.exists?(name, url)
    uri = URI.parse(url.gsub(/{{NAME}}/, name))
    http = Net::HTTP.new(uri.host, uri.port)
    if url.start_with? "https"
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end
    answer = nil
    http.start do
      answer = http.get(uri.path).code
    end
    answer == "200"
  end
end
