FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt 
RUN python -m pip install psycopg2-binary
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
