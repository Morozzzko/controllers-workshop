# frozen_string_literal: true

class Web::NotesController < Web::ApplicationController
  def create
    @note = Note.create!(note_params)
  end

  def index
    @notes = Note.all
  end

  private

  def note_params
    params.require(:note).permit(:content).merge(user: current_user)
  end
end
