#! /usr/bin/env ruby

require 'benchmark'

class Test
  attr_reader :a

  def initialize(a)
    @a = a
  end

  def <=>(other)
    a <=> other.a
  end
end

MAX = 5_000_000

sorted_ints   = (1..MAX).to_a
random_ints   = (1..MAX).to_a.shuffle
random_floats = (1..MAX).to_a.map { |x| x.to_f }.shuffle
random_objs   = (1..MAX).to_a.map { |x| Test.new(x) }.shuffle


puts "java.runtime.version: #{ENV_JAVA['java.runtime.version']}"
puts "java.vm.version: #{ENV_JAVA['java.vm.version']}"
puts "Iterations: #{MAX}"
puts defined?(JRUBY_VERSION) ? "JRUBY_VERSION: #{JRUBY_VERSION}" : "MRI Ruby"
puts "RUBY_VERSION: #{RUBY_VERSION}"

Benchmark.bmbm do |x|
  x.report("sorted_ints") { sorted_ints.sort }
  x.report("random_ints") { random_ints.sort }
  x.report("random_floats") { random_floats.sort }
  x.report("random_objs") { random_objs.sort }
end
