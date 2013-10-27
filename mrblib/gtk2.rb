## Explicit declaration to use version 2.x
GirFFI::bind :Gtk, 2.0

## TODO: any version 2 specific handling.
## Gtk2 has Gtk::Object and must be loaded so as not to return ::Object
##
## GirFFI has a hook to detect version 2.x
## and does this for us
# Gtk.bind_class :Object,GirFFI::Data::make(GirFFI::REPO.find_by_name("Gtk","Object"))

Gtk

module Gtk
  # we're overiding Gtk::init
  # so we establish the method manually
  bind_module_function :init, f=find_function(:init)

  class << self
    # alias the bound `init`
    alias :_init_ :init
  end

  # overide Gtk::init
  #
  # @param argv Array<String> or nil, may be omitted from call
  def self.init argv=nil
    if argv
      return _init_(argv.length, argv)
    end
    
    return _init_(0,nil)
  end
end
