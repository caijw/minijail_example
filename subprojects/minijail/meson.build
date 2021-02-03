project(
  'minija',
)

INSTALL_ROOT_DIR = get_option('prefix')
INSTALL_LIB_DIR = INSTALL_ROOT_DIR / get_option('libdir')
INSTALL_BIN_DIR = INSTALL_ROOT_DIR / get_option('bindir')
INSTALL_INC_DIR = INSTALL_ROOT_DIR / get_option('includedir')

LIB_DIR = meson.current_source_dir()

cc = meson.get_compiler('c')

minijail_dep = declare_dependency(
  include_directories: ['.'],
  dependencies: cc.find_library('minijail', dirs: [LIB_DIR])
)
meson.override_dependency('minijail', minijail_dep)

install_subdir(
  LIB_DIR,
  install_dir: INSTALL_LIB_DIR,
  strip_directory: true,
)
