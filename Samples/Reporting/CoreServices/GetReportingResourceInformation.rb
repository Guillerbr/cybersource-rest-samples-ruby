require 'cybersource_rest_client'
require_relative '../../../Data/Configuration.rb'

public
class GetReportingResourceInformation
  def main()
    config = MerchantConfiguration.new.merchantConfigProp()
    api_client = CyberSource::ApiClient.new
    api_instance = CyberSource::ReportDefinitionsApi.new(api_client, config)
    opts = {}
    opts[:'organization_id'] = "testrest"
    data, status_code, headers = api_instance.get_resource_v2_info(opts)
    puts data, status_code, headers
  rescue StandardError => err
    puts err.message
  end
  GetReportingResourceInformation.new.main
end