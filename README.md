# Mobile App Decompiler

## Usage

```sh
docker build -t=<container-name> <project-root>
docker run -v ./<src-dest>:/mdast_cli/app-src/ --env APP_NAME=<rustore-app-name> <container-name>
```

## Example

```sh
docker build -t=mdast .
docker run -v ./src:/mdast_cli/app-src/ --env APP_NAME=ru.ozon.app.android mdast
```