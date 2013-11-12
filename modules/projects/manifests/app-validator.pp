class projects::app-validator {
  include python
  include python::virtualenvwrapper
  #include spidermonkey

  boxen::project { 'app-validator':
    source        => 'mozilla/app-validator'
  }

  python::mkvirtualenv { 'app-validator':
    ensure        => present,
    project_dir   => "${boxen::config::srcdir}/app-validator/"
  }

  python::requirements { 'app-validator':
    requirements  => "${boxen::config::srcdir}/app-validator/requirements.txt",
    virtualenv    => 'app-validator'
  }
}
