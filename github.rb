require 'rest-client'
# ferramenta de consumo de API através de chamadas REST
require 'json'

url = 'https://api.github.com/search/repositories?'
q = 'spotcode'
language = 'ruby'

resp = RestClient.get "#{url}q=#{q}&language=#{language}"
# montei a nossa url que ficou similar ao exemplo no github

