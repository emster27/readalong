require "rails_helper"

RSpec.describe LoginResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "logins",
          attributes: {},
        },
      }
    end

    let(:instance) do
      LoginResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { Login.count }.by(1)
    end
  end

  describe "updating" do
    let!(:login) { create(:login) }

    let(:payload) do
      {
        data: {
          id: login.id.to_s,
          type: "logins",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      LoginResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { login.reload.updated_at }
      # .and change { login.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:login) { create(:login) }

    let(:instance) do
      LoginResource.find(id: login.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { Login.count }.by(-1)
    end
  end
end
