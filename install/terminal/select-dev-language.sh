# Install default programming languages
if [[ -v OMAKUB_FIRST_RUN_LANGUAGES ]]; then
	languages=$OMAKUB_FIRST_RUN_LANGUAGES
else
	AVAILABLE_LANGUAGES=("Ruby on Rails" "Node.js" "Go" "PHP" "Python" "Elixir" "Rust" "Java")
	languages=$(gum choose "${AVAILABLE_LANGUAGES[@]}" --no-limit --height 10 --header "Select programming languages")
fi

if [[ -n "$languages" ]]; then
	for language in $languages; do
		case $language in
		Ruby)
			mise use --global ruby@3.3
			mise x ruby -- gem install rails --no-document
			;;
		Node.js)
			mise use --global node@lts
			;;
		Go)
			mise use --global go@latest
			;;
		PHP)
			sudo dnf install -y php php-{cli,curl,apcu,intl,mbstring,opcache,pgsql,mysqlnd,sqlite3,redis,xml,zip}
			php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
			php composer-setup.php --quiet && sudo mv composer.phar /usr/local/bin/composer
			rm composer-setup.php
			;;
		Python)
			mise use --global python@latest
			;;
		Elixir)
			mise use --global erlang@latest
			mise use --global elixir@latest
			mise x elixir -- mix local.hex --force
			;;
		Rust)
			curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
			;;
		Java)
			mise use --global java@latest
			;;
		esac
	done
fi
