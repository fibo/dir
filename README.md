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

If no argument is provided, it will create a temporary folder.

```sh
dir
```

## Annotated source

If `-h` or `--help` is the first parameter or no argument is provided, then output *USAGE*.


    dir() {
    	USAGE=`cat <<EOF
    +---------------------------------------------------------+
    | Create a folder and enter into it.                      |
    |                                                         |
    |    dir foo/bar                                          |
    |                                                         |
    | If no path is given, a temporary folder will be created.|
    |                                                         |
    | https://github.com/fibo/dir                             |
    +---------------------------------------------------------+
    EOF`

    	[ "$1" = "-h" ] && echo $USAGE && return
    	[ "$1" = "--help" ] && echo $USAGE && return

Use `mkdir` to create given folder and *change directory* into it.

    	if [ $# -gt 0 ]
    	then
    		mkdir -p "$*" && cd "$_"
    	else

If no argument is provided, use `mktemp` to create a temporary folder and *change directory* into it.

    		cd `mktemp -d`
    	fi
    }

## License

[MIT](https://fibo.github.io/mit-license)

