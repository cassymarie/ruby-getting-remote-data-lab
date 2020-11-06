# Write your code here
require 'net/http'  
require 'json'      #gem install json (if get error)
require 'open-uri'

# url = "https://cat-fact.herokuapp.com/facts"
# url = URL(url)

# response = Net::HTTP.get(url)

# apis = JSON.parse(response)

class GetRequester
     attr_accessor :link

     def initialize(link)
          @link =  link
     end

     def get_response_body
          uri = URI.parse(link)
          response = Net::HTTP.get_response(uri)
          response.body
     end

     def parse_json
          JSON.parse(get_response_body)
     end
end
