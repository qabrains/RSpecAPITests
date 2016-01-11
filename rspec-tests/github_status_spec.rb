require 'rspec'
require_relative '../client/APIStatusClient'

describe 'Github API Status endpoint' do

  before(:all) do
    @git_status_client = APIStatusClient.new
  end

  it 'should return the current status of the api', :status do
    code,response = @git_status_client.get_status
    # p code
    expect(code).to eq 200
    # expect(response['status'].upcase).to eq 'GOwOD'
    expect(response['status'].upcase).to eq 'GOOD'
  end
end