FROM n8nio/n8n:1.73.1

# Устанавливаем Python и openpyxl как пакеты Alpine (без pip)
USER root
RUN apk add --no-cache python3 py3-pip py3-openpyxl

USER node
ENTRYPOINT ["sh", "-c", "npx n8n user-management:reset && n8n"]
