# rack-processor
Simple rack application for processing text inputs

## Running
Install dependencies with `bundle install`, then start the server with `rackup`

## Running tests
Run `rspec` to execute test suite

## Usage
Send any text with `POST /reverse` to reverse it:
```
curl -X POST http://localhost:9292/reverse -H 'Content-Type: text/plain' -d 'Lorem ipsum'

{
    "original": {
        "data": "Lorem ipsum"
    },
    "message": "muspi meroL"
}
```
