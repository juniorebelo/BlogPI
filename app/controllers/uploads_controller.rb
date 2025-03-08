class UploadsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    if params[:file].present?
      uploaded_file = params[:file]

      blob = ActiveStorage::Blob.create_and_upload!(
        io: uploaded_file.tempfile,
        filename: uploaded_file.original_filename,
        content_type: uploaded_file.content_type
      )

      render json: { url: url_for(blob) }, status: :created
    end
  end
end
