FROM python:3.9.1

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY autodoist.py /app
CMD ["sh", "-c", "python autodoist.py -a=${TODOIST_API_KEY} -r=1 -l=next --inbox parallel"]

