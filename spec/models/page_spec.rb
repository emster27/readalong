require "rails_helper"

RSpec.describe Page, type: :model do
  describe "Direct Associations" do
    it { should have_many(:bookmarks) }

    it { should have_many(:comments) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
    it { should validate_presence_of(:content) }

    it { should validate_presence_of(:writer_name) }
  end
end
