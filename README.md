# tachyonscss-rails - Use Tachyons in a Rails App without NPM Modules

Rails 7 has brought the Asset Pipeline back into the spotlight, which means that bundling CSS without NPM requires gems.  This
gem allows you to use [Tachyons](https://tachyons.io) without having to set up a JS bundler in your Rails 7 app.

## Install

Add to your `Gemfile`:

```ruby
gem "tachyonscss-rails"
```

then `bundle install`

## Use

The most common way to use this is:

1. Ensure you have `sassc-rails` in your `Gemfile`
1. Ensure your `app/assets/stylesheets/application.scss` file is, in fact, a `.scss` file and not `.css`.  If you haven't put anything in it, you can rename it safely.
1. Add to `app/assets/stylesheets/applicationscss`:

   ```scss
   @import "tachyons";
   ```
1. If you want to customize Tachyons, [the variables partial](https://github.com/tachyons-css/tachyons-sass/blob/master/scss/_variables.scss) is a guide to what you can modify.  To do that, create the file `app/assets/stylesheets/tachyons-overrides.scss` (or whatever name you like).  For example, you could change the green skin like so:

   ```scss
   $green: 00ff00;
   ```
   Then add it *before* the tachyons `@import` in `app/assets/stylesheets/application.scss:

   ```scss
   @import "tachyons-overrides";
   @import "tachyons";
   ```

Basically, this gem makes it so you can `@import "tachyons";` and it will build the CSS file from the contents of the
[tachyons-sass](https://github.com/tachyons-css/tachyons-sass) module that this gem wraps.


