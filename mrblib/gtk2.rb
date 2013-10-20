## Explicit declaration to use version 2.x
GirFFI.require :Gtk, 2.0

## TODO: any version 2 specific handling.
## Gtk2 has Gtk::Object and must be loaded so as not to return ::Object
##
## GirFFI has a hook to detect version 2.x
## and does this for us
# Gtk.bind_class :Object,GirFFI::Data::make(GirFFI::REPO.find_by_name("Gtk","Object"))
