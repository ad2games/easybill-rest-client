# frozen_string_literal: true

RSpec.describe EasybillRestClient::GenericApi do
  let(:api_client) { instance_double(EasybillRestClient::ApiClient) }

  subject(:api) { described_class.new(api_client) }

  describe '#save' do
    context 'entity does not exist' do
      let(:entity) { instance_double(EasybillRestClient::Document, id: nil) }

      it 'creates it' do
        expect(api).to receive(:create).with(entity)
        api.save(entity)
      end
    end

    context 'entity does not exist' do
      let(:entity) { instance_double(EasybillRestClient::Document, id: 1) }

      it 'creates it' do
        expect(api).to receive(:update).with(entity)
        api.save(entity)
      end
    end
  end
end
