def response_string
  '{"uid":"1129481062","info":{"name":"Chris Jewell"}}'
end


def sample_response_string
  <<-JSON
    {
      "uid":"1129481062",
      "info":
        {
          "name":"Chris Jewell",
          "image":"https://example.com/avatar.jpg"
        },
      "credentials":
        {
          "token":"faketoken",
          "refresh_token":"fakerefresh",
          "expires_at":1425379690
        }
    }
  JSON
end