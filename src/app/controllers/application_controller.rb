# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  before do
    content_type :json
  end

  get '/' do
    status 200
    { message: 'Hello' }.to_json
  end
end
