# frozen_string_literal: true

class UploadedFileComponent < ViewComponent::Base
  def initialize(name:, file_type:, file_size:, description: nil)
    @name = name
    @description = description
    @file_type = file_type
    @file_size = file_size
  end
end
