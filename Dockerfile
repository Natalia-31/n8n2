FROM n8nio/n8n:1.73.1

ENTRYPOINT ["sh", "-c", "npx n8n user-management:reset && n8n"]


