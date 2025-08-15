# Базовый образ n8n (alpine)
FROM n8nio/n8n:1.73.1

# --- Устанавливаем Python и openpyxl ---
# Образ n8n на Alpine, поэтому используем apk
USER root
RUN apk add --no-cache python3 py3-pip \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir openpyxl

# Возвращаемся к пользователю n8n
USER node

# Текущая команда запуска n8n + сброс админа (как и у вас)
ENTRYPOINT ["sh", "-c", "npx n8n user-management:reset && n8n"]
