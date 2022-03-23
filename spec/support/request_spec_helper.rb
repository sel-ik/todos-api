module RequestSpecHelper
  # Parse JSON request to Ruby Hash
  def json
    JSON.parse(response.body)
  end
end
