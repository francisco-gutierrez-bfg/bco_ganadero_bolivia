{{/*** Common labels  ***/}}
{{- define "project.labels" -}}
# Project labels
helm.sh/chart: {{ include "project.chart" . }}
{{ include "project.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*** Selector labels ***/}}
{{- define "project.selectorLabels" -}}
# Project selector labels
app.kubernetes.io/name: {{ include "project.name" . }}
app.kubernetes.io/environment: {{ include "project.env" . }}
app.kubernetes.io/team: {{ include "project.team" . }}
{{- end }}