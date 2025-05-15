FROM python:3.9
WORKDIR /app
COPY server.py hello.html ./
EXPOSE 8000
CMD ["python", "server.py"]
