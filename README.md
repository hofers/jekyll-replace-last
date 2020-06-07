# [Jekyll Replace Last](https://rubygems.org/gems/jekyll-replace-last)

A straightforward Jekyll filter plugin that can be used to replace the last occurrence of a substring within a string. Functional counterpart to `replace_first`.

Equivalent to:
```
# when:
# content = "hello world"
# str_to_replace = "hello".reverse
# replacement = "hi".reverse

{{ content | split: "" | reverse | join: "" | replace_first: str_to_replace, replacement | split: "" | reverse}}
```

## Installation
``` 
gem install jekyll-replace-last
```

## Usage

### Jekyll:
```
{{ content | replace_last: " ", "&nbsp;" }}
```

in `Gemfile`
```
...
group :jekyll_plugins do
  ...
  gem 'jekyll-replace-last'
```

in `_config.yml`
```
...
plugins:
  ...
  - jekyll-replace-last
```

### Ruby: 
```
require 'jekyll-replace-last'
include Jekyll::ReplaceLastFilter
replace_last("only one non-breaking space, and at the very end", " ", "&nbsp;")

=> only one non-breaking space, and at the very&nbsp;end
```


