require 'rails_helper'

RSpec.describe "logins#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/logins/#{login.id}", payload
  end

  describe 'basic update' do
    let!(:login) { create(:login) }

    let(:payload) do
      {
        data: {
          id: login.id.to_s,
          type: 'logins',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(LoginResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { login.reload.attributes }
    end
  end
end
