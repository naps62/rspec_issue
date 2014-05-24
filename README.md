# Relevant discussions

* [rspec-core
  issue](https://github.com/rspec/rspec-core/issues/1553#issuecomment-44038624)

# Setup

Just `bundle install`

# Reproducing

`correctly_failing_spec.rb` should run the test and return the expected exit
code (not 0, since the test fails on purpose):

```bash
bundle exec rspec correctly_failing_spec.rb
echo $? # should be 1
```

`offending_spec.rb` triggers the bug:

```bash
bundle exec rspec offending_issue.rb
echo $? # should be 1, but is actually 0
```

The only difference between the two specs is that the second one has `require
'simplecov'`
