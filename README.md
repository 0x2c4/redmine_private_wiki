# Private Wiki
## A RedMine plugin

This plugin add the option to set any Wiki page in redmine to privet.
Same logic like comments under issues.

## Features :

* Allows to set individual pages of wiki as privates
* Visible only to user with the privilege to see privet Wiki pages

## Use :

To set public/private wiki page :
	Projects -> MyProject -> Wiki -> select wiki page -> set private

## Installation :

	$cd /path/to/redmine/directory/plugins
	$git clone https://github.com/0x2c4/redmine_private_wiki.git
	$bundle exec rake redmine:plugins:migrate RAILS_ENV=production

## Compatibility :
This plugin is compatible with Redmine 4.1.x

## License :
This plugin is licensed under the MIT license.

## Creator:
Original Creator: f0y, Link of the original plugin : https://github.com/f0y/redmine_private_wiki


