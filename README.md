# SequelPage

[![Gem Version](https://badge.fury.io/rb/sequel-page.svg)](http://badge.fury.io/rb/sequel-page)

This extension adds the `Sequel::Dataset#page` method, which returns paginated 
(limited and offset) datasets. Instead the `limit` and the `offset`, you can 
use the `page_no`and the `per_page` values.

## Installation

Add this line to your application's Gemfile:

    gem 'sequel-page'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sequel-page

## Usage

```ruby
require 'sequel-page'

db = Sequel.mock
db.extension(:page)

page_no = 3
per_page = 20
db[:foo].page(page_no, per_page) 
  #=> <Sequel::Mock::Dataset: "SELECT * FROM foo LIMIT 20 OFFSET 40">
```

## Versioning

See [semver.org][semver]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[semver]: http://semver.org/
