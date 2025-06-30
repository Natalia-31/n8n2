FROM n8nio/n8n

ENTRYPOINT ["sh", "-c", "npx n8n user-management:reset && n8n"]
