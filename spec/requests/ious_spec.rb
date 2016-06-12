require 'rails_helper'
require 'support/factory_girl'

describe 'ious API' do

  let(:json) { JSON.parse(response.body) }

  describe '#index' do
    it 'sends a list of ious' do
      create_list :iou, 10
      get '/ious'
      expect(response).to be_success
      expect(json.length).to eq 10
    end
  end

  describe '#create' do
    it 'adds iou to db' do
      post '/ious', {name: "Jeremy Beidle"}
      expect(response).to be_success
      expect(Iou.count).to eq 1
    end
  end

  describe '#destroy' do
    it 'removes iou from db' do
      iou = create :iou
      delete "/ious/#{iou.id}"
      expect(response).to be_success
      expect(Iou.count).to eq 0
    end
  end

end
