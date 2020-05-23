# frozen_string_literal: true

class Web::Notes::ApplicationController < Web::ApplicationController
  def current_note
    @current_note ||= Note.find(params[:id])
  end
end
