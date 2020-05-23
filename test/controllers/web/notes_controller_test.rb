# frozen_string_literal: true

require 'test_helper'

class Web::NotesControllerTest < ActionDispatch::IntegrationTest
  test 'returns list of notes' do
    get '/web/notes'

    assert { response.status == 200 }
  end
end