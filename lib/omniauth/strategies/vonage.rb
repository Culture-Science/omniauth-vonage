require "omniauth/strategies/oauth2"
require "uri"
require "rack/utils"

module OmniAuth
  module Strategies
    class Vonage < OmniAuth::Strategies::OAuth2
      option :name, "vonage"

      option :authorize_options, [:scope, :domain_name]

      option :client_options, {
        site: "https://api.vonage.com",
        authorize_url: "https://api.vonage.com/authorize",
        token_url: "https://api.vonage.com/token",
        response_type: "code"
      }

      option :auth_token_params, {
        grant_type: "authorization_code"
      }      

      private

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
