require 'rails_helper'

RSpec.describe Login, type: :model do
  
    describe "Direct Associations" do

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    it { should validate_presence_of(:password) }

    it { should validate_length_of(:password).is_at_least(8).is_at_most(20) }

    it { should validate_inclusion_of(:password).in_array([ "@", "-", "_" ]) }

    it { should validate_presence_of(:useremail) }

    end
end
