# frozen_string_literal: true

class Web::User::NotesController < Web::ApplicationController
  def index
    @notes = Note.where(author: current_user)
  end
end
