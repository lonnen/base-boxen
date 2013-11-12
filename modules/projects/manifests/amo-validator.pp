class projects::amo-validator {
  include python
  include python::virtualenvwrapper
  #include spidermonkey

  boxen::project { 'amo-validator':
    source        => 'mozilla/amo-validator'
  }

  python::mkvirtualenv { 'amo-validator':
    ensure        => present,
    project_dir   => "${boxen::config::srcdir}/amo-validator/"
  }

  python::requirements { 'amo-validator':
    requirements  => "${boxen::config::srcdir}/amo-validator/requirements.txt",
    virtualenv    => 'amo-validator'
  }
}
