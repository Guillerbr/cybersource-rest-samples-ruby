require 'cybersource_rest_client'
require_relative '../../../Data/Configuration.rb'

# * This is a sample code to call KeyGenerationApi,
# * Generate Key - with Encryption Type
# * GeneratePublickey method will create a new Public Key and Key ID

public
class Generatekey
  def main
    config = MerchantConfiguration.new.merchantConfigProp()
    request = CyberSource::KeyParameters.new
    api_client = CyberSource::ApiClient.new
    api_instance = CyberSource::KeyGenerationApi.new(api_client, config)
    request.encryption_type = "RsaOaep256"
    options = {}
    options[:'generate_public_key_request'] = request
    data, status_code, headers = api_instance.generate_public_key(options)
    puts data, status_code, headers
  rescue StandardError => err
    puts err.message
  end
  Generatekey.new.main
end