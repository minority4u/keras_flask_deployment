FROM python:3.6
COPY . /code
COPY requirements.txt /temp/
WORKDIR /code
#RUN pip install --upgrade pip setuptools wheel
RUN pip install -r /temp/requirements.txt --no-cache-dir
CMD ["python", "/code/src/app/app.py"]