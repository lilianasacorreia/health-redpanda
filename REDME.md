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


---

# 🎯 Próximo passo

Agora que tens o **health-redpanda**, posso gerar também:

👉 **os ficheiros Helm completos para o `health-postgres`**  
(com `values.yaml`, `values-dev.yaml`, `values-prod.yaml`, e scripts SQL)

Diz-me só **se queres que eu avance já para o Postgres**.