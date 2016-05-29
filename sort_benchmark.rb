#! /usr/bin/env ruby

require 'benchmark'

load "../data"

class Test
  attr_reader :a

  def initialize(a)
    @a = a
  end

  def <=>(other)
    a <=> other.a
  end
end

$random_objs = $random_ints.map { |x| Test.new(x) }

puts "java.runtime.version: #{ENV_JAVA['java.runtime.version']}"
puts "java.vm.version: #{ENV_JAVA['java.vm.version']}"
puts "Iterations: #{$MAX}"
puts defined?(JRUBY_VERSION) ? "JRUBY_VERSION: #{JRUBY_VERSION}" : "MRI Ruby"
puts "RUBY_VERSION: #{RUBY_VERSION}"

10.times do
  Benchmark.bmbm do |x|
    x.report("sorted_ints") { $sorted_ints.sort }
    x.report("random_ints") { $random_ints.sort }
    x.report("random_floats") { $random_floats.sort }
    x.report("random_objs") { $random_objs.sort }
    x.report("small_arrays") { $small_arrays.each { |x| x.sort } }
  end
end
