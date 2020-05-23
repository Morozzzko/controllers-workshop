# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :web do
    namespace :user do
      resources :notes, only: %i[index]
    end

    resources :notes, only: %i[index create] do
      member do
        resources :comments, only: %i[index create] do
          member do
            resources :upvotes, only: %i[create]
            resources :downvotes, only: %i[create]
          end
        end
        resources :upvotes, only: %i[create]
        resources :downvotes, only: %i[create]
      end
    end
  end
end
