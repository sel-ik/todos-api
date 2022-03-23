module Response
  # Responds with JSON and an HTTP status code (200 by default)
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
