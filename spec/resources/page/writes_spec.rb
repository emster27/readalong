require "rails_helper"

RSpec.describe PageResource, type: :resource do
  describe "creating" do
    let(:payload) do
      {
        data: {
          type: "pages",
          attributes: {},
        },
      }
    end

    let(:instance) do
      PageResource.build(payload)
    end

    it "works" do
      expect do
        expect(instance.save).to eq(true),
                                 instance.errors.full_messages.to_sentence
      end.to change { Page.count }.by(1)
    end
  end

  describe "updating" do
    let!(:page) { create(:page) }

    let(:payload) do
      {
        data: {
          id: page.id.to_s,
          type: "pages",
          attributes: {}, # Todo!
        },
      }
    end

    let(:instance) do
      PageResource.find(payload)
    end

    xit "works (add some attributes and enable this spec)" do
      expect do
        expect(instance.update_attributes).to eq(true)
      end.to change { page.reload.updated_at }
      # .and change { page.foo }.to('bar') <- example
    end
  end

  describe "destroying" do
    let!(:page) { create(:page) }

    let(:instance) do
      PageResource.find(id: page.id)
    end

    it "works" do
      expect do
        expect(instance.destroy).to eq(true)
      end.to change { Page.count }.by(-1)
    end
  end
end
