# Secret Scan using TruffleHog
Scan your entire repository to find stored secret, keys, password or certificate using TruffleHog

# Uage
```yaml
on: push
name: Scan secret using TruffleHog
jobs:
  Scan-Secret:
    name: Scan
    runs-on: ubuntu-latest
    steps:
      - name: Code Checkout
        uses: actions/checkout@v2
      - name: TruffleHog Scan
        uses: trideepnag1911/trufflehog-scan@main

```

## usage with exclude path

```yaml
on: push
name: Scan secret using TruffleHog
jobs:
  Scan-Secret:
    name: Scan
    runs-on: ubuntu-latest
    steps:
      - name: Code Checkout
        uses: actions/checkout@v2
      - name: TruffleHog Scan
        uses: trideepnag1911/trufflehog-scan@main
        with:
          exclude_path: 'configuration/exclude_paths.txt'
```

