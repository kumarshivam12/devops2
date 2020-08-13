FROM python:3.6-alpine
WORKDIR /app
COPY requirements.txt /app
COPY app.py /app
COPY templates /app/templates
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]