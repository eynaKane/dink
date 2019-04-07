#!/usr/bin/env bash
echo '\n!!!---RUNNING RUBOCOP---!!!\n'
bundle exec rubocop
echo '\n!!!---RUNNING RSPEC---!!!\n'
bundle exec rspec spec --format progress
echo '\n!!!---RUNNING MINITEST---!!!\n'
bin/rails test
echo '\n!!!---RUNNING CUCUMBER---!!!\n'
bundle exec cucumber --format progress
