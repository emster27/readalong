require "rails_helper"

RSpec.describe "logins#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/logins/#{login.id}", params: params
  end

  describe "basic fetch" do
    let!(:login) { create(:login) }

    it "works" do
      expect(LoginResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("logins")
      expect(d.id).to eq(login.id)
    end
  end
end
