#!/usr/bin/env bash
echo '\n!!!---RUNNING RUBOCOP---!!!\n'
bundle exec rubocop
echo '\n!!!---RUNNING RSPEC---!!!\n'
bundle exec rspec spec --format progress
echo '\n!!!---RUNNING MINITEST---!!!\n'
bundle exec rake test
echo '\n!!!---RUNNING CUCUMBER---!!!\n'
bundle exec cucumber --format progress
echo '\n!!!---RUNNING MINITEST SYSTEM TEST---!!!\n'
bundle exec rake test:system
