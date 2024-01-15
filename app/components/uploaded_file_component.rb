# frozen_string_literal: true

class UploadedFileComponent < ViewComponent::Base
  def initialize(name:, file_type:, file_size:, content_id:, description: nil)
    @name = name
    @description = description
    @file_type = file_type
    @file_size = file_size
    @content_id = content_id
  end
end
