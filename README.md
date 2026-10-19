# Code scanning merge protection demo

Demo for [scan-ballerina](https://github.com/ballerina-platform/scan-ballerina): block only the findings a pull request introduces.

- `main` already has two low findings in `main.bal`.
- The **Code scanning** job uploads findings to GitHub code scanning and never fails on findings.
- A ruleset on `main` requires code scanning results from the scan tool, so a pull request that introduces an alert cannot merge.
- The **Severity gate (contrast)** job uses `fail-on-severity: low`, which counts every finding, so it fails on every pull request, even one that adds none.
