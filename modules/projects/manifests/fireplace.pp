class projects::fireplace {
  include nodejs::v0_10
  include phantomjs

  boxen::project { 'fireplace':
    source        => 'mozilla/fireplace'
  }
}
