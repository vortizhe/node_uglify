# NodeUglify


One of the biggest asset pipeline problem is the performance when the js grows. Replacing the default ruby uglifier with node [uglifyjs](https://www.npmjs.com/package/uglifyjs) version with a light wrapper to speed up precompilation.

```
# With default ruby uglifier
$ rake assets:precompile  210,17s user 6,00s system 100% cpu 3:35,46 total
# With node ruby uglifier
$ rake assets:precompile  33,76s user 5,35s system 102% cpu 38,333 total


```

## Requisites

Install node and uglifyjs package.

```
$ npm install uglify-js -g
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'node_uglify'
```

And then execute:

```
$ bundle
```

Update your environment config:

```ruby
config.assets.js_compressor = NodeUglify.new
```

And precompile assets as usual.

```
rake assets:precompile
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
