FROM python:3.14.0a3-alpine
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]