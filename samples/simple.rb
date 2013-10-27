Gtk::init()

w = Gtk::Window.new Gtk::WindowType::TOPLEVEL
w.set_title("simple.rb")

w.add b = Gtk::Button.new_with_mnemonic("_Quit")

b.signal_connect "clicked" do |widget, data|
  Gtk::main_quit
end

w.show_all

Gtk::main
