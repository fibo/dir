# dir

> create a folder and enter into it

[![KLP](https://img.shields.io/badge/kiss-literate-orange.svg)](http://g14n.info/kiss-literate-programming)

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

Folder names with spaces are supported

```bash
dir ~/please dont/create folders/with spaces
```

## Annotated source

    dir() {
    	mkdir -p "$*" && cd "$_"
    }

## License

[MIT](http://g14n.info/mit-license)
