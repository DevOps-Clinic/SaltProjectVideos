web:
  server_name: devops.clinic
  server_alias: www.devops.clinic
  ssl:
    cert: devops_clinic.crt
    key: devops_clinic.key
    ca_cert: my_cert_provider_cert.crt
  website:
    version: v0.9.0
