# Write your code here

require 'net/http'
require 'open-uri'
require 'json'


class GetRequester
    @url
    def initialize(url)
        @url = url
    end

    def get_response_body()
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body

    end

    def  parse_json()
        body =  get_response_body()

        JSON.parse(body)

    end



end
