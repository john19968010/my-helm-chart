{{/*
Expand the name of the chart.
*/}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "my-fastapi-chart.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "my-fastapi-chart.labels" -}}
helm.sh/chart: {{ include "my-fastapi-chart.chart" . }}
{{ include "my-fastapi-chart.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "my-fastapi-chart.selectorLabels" -}}
app.kubernetes.io/name: {{ include "my-fastapi-chart.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app: my-fastapi
{{- end }}


{{- define "my-fastapi-chart.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

