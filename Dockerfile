FROM python:3.14
WORKDIR /app
COPY requirements.txt 
RUN pip install -r requirements.text
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]
