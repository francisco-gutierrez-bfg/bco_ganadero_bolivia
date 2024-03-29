{{/*** Expand the name of the chart. ***/}}
{{- define "project.name" -}}
    {{- default .Values.fullnameOverride .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*** Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name. ***/}}
{{- define "project.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*** Create chart name and version as used by the chart label. ***/}}
{{- define "project.chart" -}}
    {{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}


{{- define "project.env" -}}
    {{- default "develop" .Values.environment | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- define "project.team" -}}
    {{- default "devsecops" .Values.team | trunc 63 | trimSuffix "-" }}
{{- end }}