FROM python:3.9

WORKDIR /app/script

COPY . .

EXPOSE 5000

RUN pip install --upgrade pip Flask psycopg2

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

# working method 1: 
# RUN pip install --upgrade pip Flask psycopg2
# CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"] ----works fine for now.
# orrrrrrrrrrrr
# RUN pip install Flask psycopg2 gunicorn
# CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"] --- This showing error on worker timeout but working.

# docker build -t app .
# docker run --name app_c -p 5000:5000 app 