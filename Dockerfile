FROM python:3.9
WORKDIR /code
COPY /requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./main.py /code/requirements.txt
COPY ./form.html /code/requirements.txt
CMD ["unicorn", "main.py", "--host", "0.0.0.0", "--port", "80"]
