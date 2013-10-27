  ## Conflicts with `mruby-gtk3`  
  MRuby::Gem::Specification.new('mruby-gtk2') do |spec|
    spec.license = 'MIT'
    spec.authors = ['ppibburr']
    spec.version = "0.0.1"
    
    spec.add_dependency('mruby-girffi', '>= 0.0.0')       
  end
