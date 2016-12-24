Originally not mine(https://github.com/dvv/luvit-curl)
I modified to work with the current version of lvit

-----

```lua
local get = require('curl').get

-- get twitter timeline
get({
  url = 'http://twitter.com/status/user_timeline/creationix.json?count=2&callback=foo',
}, function (err, data)
  p(err, data)
  -- should see pretty-printed table of one or two records here
end)
```

License
-----

[MIT](luvit-curl/license.txt)
