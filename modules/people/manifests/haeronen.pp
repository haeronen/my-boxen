class people::haeronen {

  osx::recovery_message { 'This Mac belongs to Harri Eronen / Digia Plc':}

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::enable_standard_function_keys
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::tap_to_click

  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::show_removable_media_on_desktop
  include osx::finder::unhide_library
  include osx::finder::show_hidden_files
  include osx::finder::show_warning_before_emptying_trash
  include osx::finder::show_warning_before_changing_an_extension
  include osx::finder::show_all_filename_extensions

  include osx::no_network_dsstores

  include iterm2::stable
  include wget
  include zsh

  include brewcask
  package { 'google-chrome': provider => 'brewcask' }
  package { 'firefox': provider => 'brewcask' }
  package { 'postman': provider => 'brewcask' }

  package { 'alfred': provider => 'brewcask' }
  package { 'dash': provider => 'brewcask' }
  package { 'kakapo': provider => 'brewcask' }

  package { 'keepassx': provider => 'brewcask' }
  package { 'shiftit': provider => 'brewcask' }

  package { 'evernote': provider => 'brewcask' }
  package { 'dropbox': provider => 'brewcask' }
  package { 'skype': provider => 'brewcask' }
  package { 'skitch': provider => 'brewcask' }
  package { 'licecap': provider => 'brewcask' }

  package { 'charles': provider => 'brewcask' }
  package { 'transmit': provider => 'brewcask' }
  package { 'gitkraken': provider => 'brewcask' }

  package { 'beyond-compare': provider => 'brewcask' }

  include atom
  atom::package { 'linter': }

  package { 'lighttable': provider => 'brewcask' }

  include fonts::adobe::sourcecodepro
  include fonts::adobe::sourcesanspro

  class { 'virtualbox':
    version     => '5.0.16',
    patch_level => '105871'
  }

  class { 'vagrant':
    version => '1.8.1'
  }

  package { 'vagrant-manager': provider => 'brewcask' }

  include heroku

  class { 'java':
    update_version => '71'
  }

  class { 'intellij':
    edition => 'ultimate',
    version => '14.0.4'
  }

  package { 'webstorm': provider => 'brewcask' }

  include sequel_pro
  include jmeter

  package { 'mysqlworkbench': provider => 'brewcask' }

  include postgresql
  include redis
  include mongodb

  include python
  package { 'pycharm': provider => 'brewcask' }
}
