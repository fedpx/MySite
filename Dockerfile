# Используем легковесный nginx на базе alpine
FROM nginx:alpine

# Копируем все файлы текущей папки в директорию веб-сервера
COPY . /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d/default.conf
# Открываем порт 80
EXPOSE 80

# Запускаем nginx в фореграундном режиме (чтобы контейнер не завершился)
CMD ["nginx", "-g", "daemon off;"]