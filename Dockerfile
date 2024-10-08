FROM python:3.9
# WORKDIR /code
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir --upgrade -r /requirements.txt
COPY ./main.py /requirements.txt
COPY ./form.html /requirements.txt
CMD ["unicorn", "main.py", "--host", "0.0.0.0", "--port", "80"]
