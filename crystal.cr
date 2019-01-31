# Features of Crystal
# - Ruby-inspired syntax.
# - Statically type-checked but without having to specify the type of variables or method arguments.
# - Be able to call C code by writing bindings to it in Crystal.
# - Have compile-time evaluation and generation of code, to avoid boilerplate code.
# - Compile to efficient native code.

# A very basic HTTP server
require "http/server"

server = HTTP::Server.new(8080) do |request|
  HTTP::Response.ok "text/plain", "Hello world, got #{request.path}!"
end

puts "Listening on http://0.0.0.0:8080"
server.listen

module Foo
  abstract def abstract_method : String

  @[AlwaysInline]
  def with_foofoo
    with Foo.new(self) yield
  end

  struct Foo
    def initialize(@foo : ::Foo)
    end

    def hello_world
      @foo.abstract_method
    end
  end
end

class Bar
  include Foo

  @@foobar = 12345

  def initialize(@bar : Int32)
  end

  macro alias_method(name, method)
    def {{ name }}(*args)
      {{ method }}(*args)
    end
  end

  def a_method
    "Hello, World"
  end

  alias_method abstract_method, a_method

  def show_instance_vars : Nil
    {% for var in @type.instance_vars %}
      puts "@{{ var }} = #{ @{{ var }} }"
    {% end %}
  end
end

class Baz < Bar; end

lib LibC
  fun c_puts = "puts"(str : Char*) : Int
end

baz = Baz.new(100)
baz.show_instance_vars
baz.with_foofoo do
  LibC.c_puts hello_world
end
