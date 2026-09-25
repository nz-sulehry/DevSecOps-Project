{{/*
Expand the name of the chart.
*/}}
{{- define "netflix.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "netflix.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "netflix.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels.
*/}}
{{- define "netflix.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/name: {{ include "netflix.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels.
*/}}
{{- define "netflix.selectorLabels" -}}
app.kubernetes.io/name: {{ include "netflix.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
