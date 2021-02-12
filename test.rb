#!/usr/bin/env ruby
# frozen_string_literal: true

require 'bundler/setup'
Bundler.require(:default)

JSON.parse(IO.read('bork.json'))

iters = 0
Benchmark.ips do |b|
  b.report('JSON gem') do
    begin
      iters += 1
      JSON.parse('{"took":37,"timed_out":false}').to_json
    rescue => e
      puts
      puts "#{e.class} at iter #{iters}"
      raise
    end
  end
end
