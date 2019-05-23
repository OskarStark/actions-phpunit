# A GitHub Action for PHPUnit

## Usage

Use within a GitHub Action:

### `./github/main.workflow`

```
workflow "Main" {
    on = "push"
    resolves = ["PHPUnit"]
}

action "PHPUnit" {
    uses = "docker://altthree/actions-phpunit"
}
```
