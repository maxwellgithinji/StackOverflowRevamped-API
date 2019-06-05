require 'rails_helper'

RSpec.describe QuestionSerializer, type: :serializer do
  let(:user) { create(:user) }
  let!(:question) { create(:question) }

  subject { described_class }

  it 'not empty' do
    response = subject.new(question).to_json
    expect(response).not_to be_nil
  end

  it 'return a hash' do
    response = subject.new(question).to_json
    expect(JSON.parse(response)).to be_a Object
  end
end