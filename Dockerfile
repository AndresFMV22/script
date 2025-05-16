FROM python:3
RUN pip install Flask
WORKDIR /home/app
COPY server.py .
COPY templates ./templates
EXPOSE 8080
CMD python3 /home/app/server.py
