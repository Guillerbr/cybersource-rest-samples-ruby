require 'cybersource_rest_client'
require_relative '../../../Data/Configuration.rb'

public
class CreateSearchRequest
  def main()
    config = MerchantConfiguration.new.merchantConfigProp()
    request = CyberSource::TssV2TransactionsPostResponse.new
    api_client = CyberSource::ApiClient.new
    api_instance = CyberSource::SearchTransactionsApi.new(api_client, config)
    request.save = "false"
    request.name = "TSS search"
    request.timezone = "America/Chicago"
    request.query = "clientReferenceInformation.code:12345"
    request.offset = 0
    request.limit = 100
    request.sort = "id:asc, submitTimeUtc:asc"
    data, status_code, headers = api_instance.create_search(request)
    puts data, status_code, headers
  rescue StandardError => err
    puts err.message
  end
  CreateSearchRequest.new.main
end

