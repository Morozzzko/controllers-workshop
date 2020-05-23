# frozen_string_literal: true

class Web::ApplicationController < ActionController::Base
  def current_user
    User.first || User.create!(full_name: 'John Doe')
  end
end
