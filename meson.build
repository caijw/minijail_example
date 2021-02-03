
project('minijail example',
  'c',
  'cpp',
  version: '1.0.0',
)

minijail_build = run_command('./minijail.sh')

if minijail_build.returncode() != 0
  # TODO: it failed
endif

minijail_dep = dependency('minijail')

subproject('minijail')

executable('drop_privs', [
    'drop_privs.cpp'
  ],
  include_directories: [
    '.'
  ],
  dependencies: [
    minijail_dep
  ]
)
