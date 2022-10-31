{{/*
Use this value wherever you need to identify your application.
e.g. name: {{ include "app.name" . }}-httpd
or   app.kubernetes.io/name: {{ include "app.name" . }}-httpd
*/}}
{{- define "imagegram.app.name" -}}
{{- printf "%s-%s" .Values.application_name .Release.Name | replace "+" "_" | trunc 53 | trimSuffix "-" }}
{{- end }}