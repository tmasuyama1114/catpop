# Catpop Gem

## Overview

`catpop` is a Ruby on Rails gem that adds a random cat emoji popup to your web page at random intervals. The emoji appears at random positions and sizes, and disappears after a few seconds.

## How to Install (English)

### Prerequisites

- Ruby version: 2.7.8 or later
- Rails version: 6.x or later

### 1. Add the gem to your `Gemfile`

Add the following line to your Rails application's `Gemfile`:

```ruby
gem "catpop"
```

### 2. Install the gem

Run the following command to install the gem:

```sh
bundle install
```

### 3. Include the helper in your layout

Edit your `application.html.erb` layout file and include the `catpop_script_tag` to load the JavaScript.

```erb
<!DOCTYPE html>
<html>
  <head>
    <title>CatpopTest</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>
    <%= catpop_script_tag %> <!-- Add this line -->
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
  </head>
  ...
```


## License

This project is licensed under the MIT License - see the LICENSE.txt file for details.
