require 'rest-client'
# ferramenta de consumo de API através de chamadas REST
require 'json'

url = 'https://api.github.com/search/repositories?'
q = 'ecommerce_api'
language = 'ruby'

resp = RestClient.get "#{url}q=#{q}&language=#{language}"
# montei a nossa url que ficou similar ao exemplo no github

puts resp.code
# vou exibir o status code que ele devolve
#puts resp.body
# é gigantesco daí vou fazer um PARSE
puts ""
puts JSON.parse(resp.body)["total_count"]
puts ""
puts JSON.parse(resp.body)["items"][0]["name"]