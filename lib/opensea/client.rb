require 'uri'
require 'net/http'
require 'openssl'
require 'json'

module OpenSea
  class Client
    BASE_URL = 'https://api.opensea.io/api/v1/'

    DEFAULT_OPTS = {
      order_direction: :desc,
      offset: 0
    }

    def initialize
    end

    def self.assets(opts)
      new.assets(opts)
    end

    def assets(opts)
      request("#{BASE_URL}assets?", opts.merge(DEFAULT_OPTS))
    end

    private

    def request(url, opts)
      uri = formatted_uri(url, opts)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      JSON.parse http.request(Net::HTTP::Get.new(url)).read_body
    end

    def formatted_uri(url, opts)
      URI(url + opts.to_a.map { |a| a.join("=") }.join("&"))
    end
  end
end