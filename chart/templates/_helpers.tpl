{{/*
Catalogue hostname
*/}}
{{- define "catalogue.datasource" -}}
{{- if .Values.config.dataSource -}}
{{- .Values.config.dataSource | quote -}}
{{- else -}}
{{ .Values.catalogue_db.mysql.mysqlUser }}:$(MYSQL_PASSWORD)@tcp({{ template "catalogue_db.host" . }}:{{ template "catalogue_db.port" . }})/{{ .Values.catalogue_db.mysql.mysqlDatabase }}
{{- end -}}
{{- end -}}