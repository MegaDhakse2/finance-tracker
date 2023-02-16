class Stock < ApplicationRecord
  # def self.new_lookup(ticker_symbol)
  #   client =
  #     IEX::Api::Client.new(
  #       publishable_token: Rails.application.credentials.iex[:public_api_key],
  #       secret_token: "sk_ae5a9c87e601416aa6c3924c0abce221",
  #       endpoint: "https://cloud.iexapis.com/v1"
  #     )
  #   client.price(ticker_symbol)
  # end
end
