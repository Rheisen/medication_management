module Response
  def json_response(object, status = :ok)
    render json: {
      status: status,
      body: object
    }
  end
end
