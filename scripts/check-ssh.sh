#!/bin/bash
# Проверяет SSH-подключение к GitHub и выводит результат
HOST="github.com"
echo "Проверка SSH-подключения к $HOST..."
if ssh -T git@$HOST 2>&1 | grep -q "successfully authenticated"; then
    echo "✅ SSH-подключение работает"
else
    echo "❌ SSH-подключение не настроено или ключ не добавлен"
    exit 1
fi
