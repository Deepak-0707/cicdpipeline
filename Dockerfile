FROM python:3.10-slim
WORKDIR /app
COPY app.py .
ENTRYPOINT [ "python" ]
CMD ["app.py"]