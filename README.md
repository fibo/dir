# dir

> create a folder and enter into it

[Installation](#installation) |
[Usage](#usage) |
[Annotated source](#annotated-source) |
[License](#license)

[![KLP](https://img.shields.io/badge/kiss-literate-orange.svg)](http://g14n.info/kiss-literate-programming)

<img src="https://rawgit.com/fibo/os-icons8/master/Apple-50.png" width="50" height="50" /> <img src="https://rawgit.com/fibo/os-icons8/master/Linux-50.png" width="50" height="50" />

## Installation

Just copy and paste the `dir` function below in your profile or do something like

```bash
mkdir -p ~/.bash
cd ~/.bash
git clone git://github.com/fibo/dir.git
echo "source ~/.bash/dir/fun.sh" >> ~/.bashrc
```

## Usage

Simple as

```bash
dir /path/to/my/folder
```

Folder `/path/to/my/folder` will be created and you will enter into it.
You can use an absolute path like the example above or a relative path like

```bash
dir folder/i/want/to/create
```

Are folder names with spaces supported? **Yes!**

```bash
dir ~/please dont/create folders/with spaces
```

## Annotated source

Outout usage, when `-h` or `--help` are the first parameter and when no
argument is provided. Then use mkdir to create given folder and change
directory into it.

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

[MIT](http://g14n.info/mit-license)

<sub>OS icons provided by <a href="https://icons8.com/">icons8</a>.</sub>
