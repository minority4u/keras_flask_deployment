FROM python:3.6-alpine
ADD . /code
WORKDIR /code
RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt
CMD ["python", "app.py"]