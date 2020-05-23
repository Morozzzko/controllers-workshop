# frozen_string_literal: true

require 'test_helper'

class Web::NotesControllerTest < ActionDispatch::IntegrationTest
  test '#index' do
    get '/web/notes'

    assert { response.status == 200 }
    assert { response.body.scan(/<tr>/).count == 3 }
  end

  test '#create' do
    content = 'Hello darkness my old friend'

    params = {
      note: {
        content: content
      }
    }

    post '/web/notes', params: params

    assert_response :success

    note_last = Note.last

    assert { note_last.user == users(:john) }
    assert { note_last.content == content }
  end
end
