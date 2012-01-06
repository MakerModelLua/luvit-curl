local get = require('../request').get

--[[
-- connect should fail gracefully
get('http://1.2.3.4', function (err, data)
  --p(err, data)
  assert(process.env.http_proxy == nil or data == nil)
  --assert(err == "tcp_connect: invalid argument")
end)]]--

-- JSON should parse ok
get('http://loginza.ru:80/api/authinfo?token=a88e7cec94343bae63624b569ab09da5', function (err, data)
  --p('LOGINZA', err, data)
  assert(err == nil)
  assert(data.error_message == "Token value value was used previously.")
  assert(data.error_type == "token_validation")
end)

-- redirects are ok, text/html goes verbatim
get('http://google.com', function (err, data)
  assert(err == nil)
  assert(data:sub(1, 1) == '<')
end)

-- TODO: https://

-- TODO: proxy
