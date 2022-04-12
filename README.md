# Ruby file parser

## Goals

- [x] List webpages ordered from most pages views to least page views
- [x] List webpages ordered from most unique views to least unique views

## Install and run

```
bundle install
```

To list webpages ordered by page views:
```
ruby lib/run.rb ./webserver.log page_views
```

To list webpages ordered by unique views:
```
ruby lib/run.rb ./webserver.log unique_views
```

## Testing

For the unit tests, run:
```
rspec
```

## Improvements
- Separate the responsibility of file parsing, and ordering of data.
- Add data to `test.log` directly in tests, and remove hard coded data from `test.log`.
- Improve UI e.g. '/home had 80 visits'
- Improve error handling/exceptions e.g. if the file name or order type entered in as arguments are invalid, or when the log file is missing data.
- Refactor duplicated sort functionality into separate method.
