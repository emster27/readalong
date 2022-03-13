require 'rails_helper'

RSpec.describe "logins#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/logins", params: params
  end

  describe 'basic fetch' do
    let!(:login1) { create(:login) }
    let!(:login2) { create(:login) }

    it 'works' do
      expect(LoginResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(['logins'])
      expect(d.map(&:id)).to match_array([login1.id, login2.id])
    end
  end
end
