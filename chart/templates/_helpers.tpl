{{/*
Catalogue hostname
*/}}
{{- define "catalogue.datasource" -}}
{{- if .Values.config.dataSource -}}
{{- .Values.config.dataSource | quote -}}
{{- else -}}
{{ .Values.catalogue-db.mysql.mysqlUser }}:$MYSQL_PASSWORD@tcp({{ template "catalogue-db.fullname" . }}:{{ template "catalogue-db.port" . }})/{{ .Values.catalogue-db.mysql.mysqlDatabase }}
{{- end -}}
{{- end -}}