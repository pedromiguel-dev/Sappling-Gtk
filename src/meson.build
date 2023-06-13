sappling_sources = [
  'main.vala',
  'application.vala',
  'Widgets/comp/HeaderBar.vala',
  'Widgets/window.vala',
  'Widgets/Leaflet.vala',
  'Widgets/Home.vala',
  'Widgets/Products.vala'
]

sappling_deps = [
  dependency('gtk4'),
  dependency('libadwaita-1', version: '>= 1.2'),
]

sappling_sources += gnome.compile_resources('sappling-resources',
  'sappling.gresource.xml',
  c_name: 'sappling'
)

executable('sappling', sappling_sources,
  dependencies: sappling_deps,
       install: true,
)
