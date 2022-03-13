require 'rails_helper'

RSpec.describe LoginResource, type: :resource do
  describe 'serialization' do
    let!(:login) { create(:login) }

    it 'works' do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(login.id)
      expect(data.jsonapi_type).to eq('logins')
    end
  end

  describe 'filtering' do
    let!(:login1) { create(:login) }
    let!(:login2) { create(:login) }

    context 'by id' do
      before do
        params[:filter] = { id: { eq: login2.id } }
      end

      it 'works' do
        render
        expect(d.map(&:id)).to eq([login2.id])
      end
    end
  end

  describe 'sorting' do
    describe 'by id' do
      let!(:login1) { create(:login) }
      let!(:login2) { create(:login) }

      context 'when ascending' do
        before do
          params[:sort] = 'id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            login1.id,
            login2.id
          ])
        end
      end

      context 'when descending' do
        before do
          params[:sort] = '-id'
        end

        it 'works' do
          render
          expect(d.map(&:id)).to eq([
            login2.id,
            login1.id
          ])
        end
      end
    end
  end

  describe 'sideloading' do
    # ... your tests ...
  end
end
