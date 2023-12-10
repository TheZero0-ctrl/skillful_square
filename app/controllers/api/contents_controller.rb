# frozen_string_literal: true

module Api
  class ContentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :authenticate_user!

    def create
      @content = Content.create!(content_params)
      respond_to do |format|
        format.turbo_stream
      end
    end

    private

    def content_params
      params.require(:content).permit(:name, :file_type, :file_size)
    end
  end
end
