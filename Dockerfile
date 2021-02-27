FROM python:3.6-slim

ENV PYTHONUNBUFFERED 1
RUN mkdir /Commerce
WORKDIR /Commerce
RUN pip install --upgrade pip

COPY . /Commerce/

RUN pip3 install -r /Commerce/requirements.txt 

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]