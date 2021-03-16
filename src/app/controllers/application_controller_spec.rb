# frozen_string_literal: true

RSpec.describe ApplicationController do
  it 'returns a 200 http status' do
    get '/'
    expect(last_response.status).to eq(200)
  end
end
