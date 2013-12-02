mruby-gtk2
==========
Gtk bindings to [mruby](https://github.com/mruby/mruby). uses [mruby-girffi](https://github.com/ppibburr/mruby-girffi)

Synopsis
===
A small convenience library that makes working with Gtk easier

Conflicts with [mruby-gtk3](https://github.com/ppibburr/mruby-gtk3)
===

Requirements
===
* [mruby-girffi](https://github.com/ppibburr/mruby-girffi) (MRBGEM)
* the requirements for mruby-girffi
* libgtk2
* GIRepository typelib information for Gtk2

Documentation
===
Run:  
`ruby document.rb`  
This will create YARD documentation at `./doc`

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
