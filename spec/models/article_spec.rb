require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'making an external API request' do
    it 'makes an api request', :vcr do
      uri = URI('https://api.github.com/repos/thoughtbot/factory_bot/contributors')
      response = Net::HTTP.get(uri)
      expect(response).to be_an_instance_of(String)
    end
  end
end
