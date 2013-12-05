class projects::socorro {
  include vagrant

  boxen::project { 'socorro':
    source => 'mozilla/socorro',
    alias => 'clone-socorro'
  }

}
