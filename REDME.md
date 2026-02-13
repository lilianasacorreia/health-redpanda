# health-redpanda

Repositório de configuração Helm para o cluster Redpanda usado no HealthDataPlatform.

## Estrutura


## Como usar com Argo CD

A Application do Argo CD deve apontar para este repositório e usar o chart oficial:

```yaml
source:
  repoURL: git@github.com:lilianasacorreia/health-redpanda.git
  path: helm/redpanda
  targetRevision: main
  helm:
    chart: redpanda
    repo: https://charts.redpanda.com
    valueFiles:
      - values.yaml
```