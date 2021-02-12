
Reproduction for [JRuby #6554](https://github.com/jruby/jruby/issues/6554).

```
❯ ./runme.sh
Warming up --------------------------------------
            JSON gem     4.042k i/100ms
Calculating -------------------------------------
            JSON gem    142.314k (±16.5%) i/s -    687.140k in   4.996607s
Warming up --------------------------------------
            JSON gem
JSON::ParserError at iter 1280
JSON::ParserError: unexpected token at '{"took":37,"timed_out":false}'
   ./test.rb at ./test.rb:19
  call_times at (eval):6
  run_warmup at /home/freaky/.rbenv/versions/jruby-9.2.14.0/lib/ruby/gems/shared/gems/benchmark-ips-2.8.4/lib/benchmark/ips/job.rb:263
        each at org/jruby/RubyArray.java:1809
  run_warmup at /home/freaky/.rbenv/versions/jruby-9.2.14.0/lib/ruby/gems/shared/gems/benchmark-ips-2.8.4/lib/benchmark/ips/job.rb:243
         run at /home/freaky/.rbenv/versions/jruby-9.2.14.0/lib/ruby/gems/shared/gems/benchmark-ips-2.8.4/lib/benchmark/ips/job.rb:228
         run at /home/freaky/.rbenv/versions/jruby-9.2.14.0/lib/ruby/gems/shared/gems/benchmark-ips-2.8.4/lib/benchmark/ips/job.rb:227
         ips at /home/freaky/.rbenv/versions/jruby-9.2.14.0/lib/ruby/gems/shared/gems/benchmark-ips-2.8.4/lib/benchmark/ips.rb:60
      <main> at ./test.rb:11
❯ ruby -v
jruby 9.2.14.0 (2.5.7) 2020-12-08 ebe64bafb9 OpenJDK 64-Bit Server VM 15.0.2+7-1 on 15.0.2+7-1 +jit [freebsd-x86_64]
❯ java -version
openjdk version "15.0.2" 2021-01-19
OpenJDK Runtime Environment (build 15.0.2+7-1)
OpenJDK 64-Bit Server VM (build 15.0.2+7-1, mixed mode, sharing)
```

