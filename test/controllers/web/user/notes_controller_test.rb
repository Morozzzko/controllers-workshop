# frozen_string_literal: true

require 'test_helper'

class Web::User::NotesControllerTest < ActionDispatch::IntegrationTest
  test 'returns list of notes which belong to current user' do
    get '/web/user/notes'

    assert { response.status == 200 }
    assert { response.body.scan(/<tr>/).count == 2 }
  end
end
