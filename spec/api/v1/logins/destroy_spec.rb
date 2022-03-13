require "rails_helper"

RSpec.describe "logins#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/logins/#{login.id}"
  end

  describe "basic destroy" do
    let!(:login) { create(:login) }

    it "updates the resource" do
      expect(LoginResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { Login.count }.by(-1)
      expect { login.reload }.
        to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
