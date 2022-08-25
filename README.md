# dir

> create a folder and enter into it

[Installation](#installation) |
[Usage](#usage) |
[Annotated source](#annotated-source) |
[License](#license)

[![KLP](https://fibo.github.io/svg/klp-badge.svg)](https://fibo.github.io/kiss-literate-programming)

## Installation

Both *zsh* and *bash* shell are supported.

Just copy and paste the `dir` function below in your shell profile or (assuming you are using zsh) do something like

```sh
mkdir -p ~/.shell
cd ~/.shell
git clone https://github.com/fibo/dir.git
echo "source ~/.shell/dir/fun.sh" >> ~/.zshrc
```

With the setup above, to update run the following

```sh
cd ~/.shell/dir
git pull origin main
source ~/.zshrc
cd -
```

## Usage

Simple as

```sh
dir /path/to/my/folder
```

Folder `/path/to/my/folder` will be created and you will enter into it.
You can use an absolute path like the example above or a relative path like

```sh
dir folder/i/want/to/create
```

Are folder names with spaces supported? **Yes!**

```sh
dir ~/you can/create folders/with spaces
```

## Annotated source

If `-h` or `--help` is the first parameter or no argument is provided, then output *USAGE*.

Use `mkdir` to create given folder and *change directory* into it.


    dir() {
    	USAGE="USAGE: dir foo/bar"

    	[ "$1" = "-h" ] && echo $USAGE && return
    	[ "$1" = "--help" ] && echo $USAGE && return

    	if [ $# -gt 0 ]
    	then
    		mkdir -p "$*" && cd "$_"
    	else
    		echo $USAGE
    	fi
    }

## License

[MIT](https://fibo.github.io/mit-license)

