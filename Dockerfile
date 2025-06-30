FROM n8nio/n8n

CMD ["sh", "-c", "npx n8n user-management:reset && n8n"]
