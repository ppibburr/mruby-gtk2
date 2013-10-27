mruby-gtk2
==========
Gtk bindings to [https://github.com/mruby/mruby](mruby). uses [https://github.com/ppibburr/mruby-girffi](mruby-girffi)

Synopsis
===
A small convenience library that makes working with Gtk easier

Requirements
===
* [https://github.com/ppibburr/mruby-girffi](mruby-girffi) (MRBGEM)
* the requirements for mruby-girffi
* libgtk2
* GIRepository typelib information for Gtk2

Example
===
```ruby
Gtk::init()

w = Gtk::Window.new(:toplevel)
w.add b=Gtk::Button.new_from_stock(Gtk::STOCK_QUIT)

b.signal_connect("clicked") do |widget, data|
  Gtk::main_quit
end

Gtk::main()
```
