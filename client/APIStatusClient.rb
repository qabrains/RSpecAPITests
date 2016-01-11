require 'rest-client'

class APIStatusClient

  def initialize

  end

  def get_status
    url = 'https://status.github.com/api/status.json'
    client = create_resource url
    response = client.get
    [response.code,JSON.parse(response.body)]
  end

  def create_resource(url)
    resource_config={}

    #Instantiate the Resource with the configurations specified
    RestClient::Resource.new(url, resource_config)
  end

end