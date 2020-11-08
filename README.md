# module_name_str

The code is a modified version of
https://github.com/MartinHeinz/python-project-blueprint . Unlike the
original template, this one is supports multiple modules in the src
directory. Moreover, this template use virtualenv instead of docker for
dev and testing.


## Configure the app name

The "module name str" (with hyphens) can be replaced with the name of your
own app by running the following script.

```bash
./configure.sh my_new_module_name
```

## Install and run

Create a virtual environment and activate it.

```bash
virtualenv venv
source venv/bin/activate
```

Install the build dependencies.

```bash
pip install -r requirements.txt
```


Install the dev dependencies.

```bash
pip install pylint flake8 bandit
```

Run a module using the following command.

```bash
make run module=my_new_module_name
```

Run the tests with,

```bash
make test
```


Run the lints with,


```bash
make lint
```
