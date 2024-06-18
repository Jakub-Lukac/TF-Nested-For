# TF-Nested-For

## Project Overview

Demo to showcase how to manipulate with arrays(lists) and maps in terraform. The IP address list example was forked from [Mark Tinderholt](https://github.com/markti).

## output "data-output-list"

```text
data-output-list = [
  "0-a",
  "1-b",
  "2-c",
]
```

## output "data-output-map"

```text
data-output-map = {
  "0" = "a"
  "1" = "b"
  "2" = "c"
}
```

## Output at the first step

```text
expected_output =
[
    [
        {
            "display_name" = "APAC/Auckland"
            "ip_addresses" = ["124.248.141.0/24",]
        },
        {
            "display_name" = "APAC/Auckland II"
            "ip_addresses" = [
                "2400:7aa0:1200::/40",
                "147.161.216.0/23",
                "136.226.248.0/23",
            ]
        },
    ]
]
```

**Here we can see the nested array(list), due to nested for.**
