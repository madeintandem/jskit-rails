JSKitRails
==========

JSKitRails is a gem that let's you seamlessly integrate rails with [JSKit](https://github.com/daytonn/jskit).

Installation
------------

Add `jskit-rails` to your Gemfile:

```rb
gem "jskit-rails"
```

Bundle it up:

```sh
bundle install
```

Add the `jskit` helper to your application layout:

```html
<%= jskit %>
```

That's it, now all controller actions will be triggered on the `JSKit` dispatcher. For example, assume a `PagesController` with an `index` action. When we visit the `pages#index` page the `jskit` helper will trigger the appropriate event:

```js
App.Dispatcher.trigger("controller:pages:index");
```

If you wish to pass data to the event handler, simply set the payload from the controller:

```rb
class PagesController < ApplicationController
  def index
    JSKitRails.set_payload("foo", [1, 2, 3], { some: "object" })
  end
end
```

Everything passed to `set_payload` will be converted to json for you (via `to_json`) and passed to the dispatcher:

```js
App.Dispatcher.trigger("controller:pages:index", "foo", [1, 2, 3], { "some": "object" });
```
