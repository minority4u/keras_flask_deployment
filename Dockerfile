FROM python:3.6
COPY . /code
WORKDIR /code
RUN ls -R models/
#RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt --no-cache-dir
CMD ["python", "app.py"]