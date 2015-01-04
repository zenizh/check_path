# rails-check_path

[![Build Status](https://travis-ci.org/kami30k/rails-check_path.svg)](https://travis-ci.org/kami30k/rails-check_path)
[![Gem Version](https://badge.fury.io/rb/rails-check_path.svg)](http://badge.fury.io/rb/rails-check_path)

rails-check_path extends ActionView::Helpers::UrlHelper in Rails application.
It just add some methods, such as `root_path?`, `post_path?(id: 1)`, and so on.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-check_path'
```

And then execute:

```
$ bundle
```

## Usage

When you add to `Gemfile` and run `bundle install`, you can use some methods in view files.

If your `config/routes.rb` is follows:

```ruby
Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :edit, :show]

  root 'posts#index'
end
```

Then following methods are available in your view files:

- `root_path?`
- `posts_path?`
- `new_post_path?`
- `edit_post_path?(:id)`
- `post_path?(:id)`

For example, you can check current page is `new_post_path` or not in `app/views/layouts/application.html.erb`:

```erb
<% if new_post_path? %>
  <!-- Show only in new_post_path -->
<% end %>
```

## Background

As you know, the logic of these methods are as follows.
So you might this gem is not required.

```ruby
def root_path?
  current_page?(root_path)
end
```

However, using this gem, your code will more clearly.

## Contributing

1. Fork it ( https://github.com/kami30k/rails-check_path/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
