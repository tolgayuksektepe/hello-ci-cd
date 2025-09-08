# Dockerfile
FROM python:3.10-slim
COPY app.py /app.py
CMD ["python", "app.py"]
# Add to pipeline steps
 - name: Build Docker image
 run: docker build -t hello-ci-cd .
 - name: Run container
 run: docker run hello-ci-cd
