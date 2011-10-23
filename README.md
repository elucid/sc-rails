# sc-rails

This gem adds handlebars.js compilation to the Rails 3.1 asset pipeline and provides packaged builds of SproutCore 2.0

## Installation

Add it to your Gemfile:

```ruby
gem "sc-rails"
```

Update your bundle:

```shell
$ bundle install
```

## Usage

Place handlebars templates in their own files with the `.hjs` extension:

```html
<!-- app/assets/javascripts/templates/author.hjs -->
<div class="author">{{name}}</div>
```

In your manifest file, require the plugin followed by your individual templates. The templates are compiled and named with their Sprockets logical path:

```javascript
//= require sproutcore
//= require templates/author
```

Complied templates end up in `SC.TEMPLATES` where SproutCore can find them.

## Acknowledgements

This gem is a *blatant* copy of the `.tmpl` [Sprockets engine by Jimmy Cuadra](https://github.com/jimmycuadra/jquery-tmpl-rails) which in turn is based on the [sprockets-jquery-tmpl](https://github.com/rdy/sprockets-jquery-tmpl) gem.

## Why did you bother creating another Handlebars/SproutCore Rails gem?

I didn't want to create this gem at all. However, I couldn't get the `sproutcore-rails` gem to work and for some reason that continues to elude me, simply putting the template class and engine registration in a initializer doesn't work either. I would much prefer that approach. If you understand how to do that, tell me and I will deprecate this project and replace it with a Gist.