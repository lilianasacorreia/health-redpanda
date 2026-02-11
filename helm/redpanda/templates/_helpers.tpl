{{- define "hapi-fhir.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "hapi-fhir.labels" -}}
app.kubernetes.io/name: {{ include "hapi-fhir.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}